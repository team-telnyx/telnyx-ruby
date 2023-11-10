# frozen_string_literal: true

module Telnyx
  # TelnyxClient executes requests against the Telnyx API and allows a user to
  # recover both a resource a call returns as well as a response object that
  # contains information on the HTTP call.
  class TelnyxClient
    attr_accessor :conn

    # Initializes a new TelnyxClient. Expects a Faraday connection object, and
    # uses a default connection unless one is passed.
    def initialize(conn = nil)
      self.conn = conn || self.class.default_conn
      @system_profiler = SystemProfiler.new
      @last_request_metrics = nil
    end

    def self.active_client
      Thread.current[:telnyx_client] || default_client
    end

    def self.default_client
      Thread.current[:telnyx_client_default_client] ||= TelnyxClient.new(default_conn)
    end

    # A default Faraday connection to be used when one isn't configured. This
    # object should never be mutated, and instead instantiating your own
    # connection and wrapping it in a TelnyxClient object should be preferred.
    def self.default_conn
      # We're going to keep connections around so that we can take advantage
      # of connection re-use, so make sure that we have a separate connection
      # object per thread.
      Thread.current[:telnyx_client_default_conn] ||= begin
        conn = Faraday.new do |builder|
          builder.use Faraday::Request::UrlEncoded
          builder.use Faraday::Response::RaiseError

          # Net::HTTP::Persistent doesn't seem to do well on Windows or JRuby,
          # so fall back to default there.
          if Gem.win_platform? || RUBY_PLATFORM == "java"
            builder.adapter :net_http
          else
            builder.adapter :net_http_persistent
          end
        end

        if Telnyx.verify_ssl_certs
          conn.ssl.verify = true
        else
          conn.ssl.verify = false

          unless @verify_ssl_warned
            @verify_ssl_warned = true
            $stderr.puts("WARNING: Running without SSL cert verification. " \
              "You should never do this in production. " \
              "Execute 'Telnyx.verify_ssl_certs = true' to enable verification.")
          end
        end

        conn
      end
    end

    # Checks if an error is a problem that we should retry on. This includes both
    # socket errors that may represent an intermittent problem and some special
    # HTTP statuses.
    def self.should_retry?(e, num_retries)
      return false if num_retries >= Telnyx.max_network_retries

      # Retry on timeout-related problems (either on open or read).
      return true if e.is_a?(Faraday::TimeoutError)

      # Destination refused the connection, the connection was reset, or a
      # variety of other connection failures. This could occur from a single
      # saturated server, so retry in case it's intermittent.
      return true if e.is_a?(Faraday::ConnectionFailed)

      false
    end

    def self.sleep_time(num_retries)
      # Apply exponential backoff with initial_network_retry_delay on the
      # number of num_retries so far as inputs. Do not allow the number to exceed
      # max_network_retry_delay.
      sleep_seconds = [Telnyx.initial_network_retry_delay * (2**(num_retries - 1)), Telnyx.max_network_retry_delay].min

      # Apply some jitter by randomizing the value in the range of (sleep_seconds
      # / 2) to (sleep_seconds).
      sleep_seconds *= (0.5 * (1 + rand))

      # But never sleep less than the base sleep seconds.
      sleep_seconds = [Telnyx.initial_network_retry_delay, sleep_seconds].max

      sleep_seconds
    end

    # Executes the API call within the given block. Usage looks like:
    #
    #     client = TelnyxClient.new
    #     messaging_profile, resp = client.request { MessagingProfile.create }
    #
    def request
      @last_response = nil
      old_telnyx_client = Thread.current[:telnyx_client]
      Thread.current[:telnyx_client] = self

      begin
        res = yield
        [res, @last_response]
      ensure
        Thread.current[:telnyx_client] = old_telnyx_client
      end
    end

    def execute_request(method, path,
                        api_base: nil, api_key: nil, headers: {}, params: {})
      api_base ||= Telnyx.api_base
      api_key ||= Telnyx.api_key

      check_api_key!(api_key)

      params = Util.objects_to_ids(params)
      url = api_url(path, api_base)

      body = nil
      query_params = nil

      case method.to_s.downcase.to_sym
      when :get, :head, :delete
        query_params = params
      else
        body = if headers[:content_type] && headers[:content_type] == "multipart/form-data"
                 params
               else
                 JSON.generate(params)
               end
      end

      # This works around an edge case where we end up with both query
      # parameters in `query_params` and query parameters that are appended
      # onto the end of the given path. In this case, Faraday will silently
      # discard the URL's parameters which may break a request.
      #
      # Here we decode any parameters that were added onto the end of a path
      # and add them to `query_params` so that all parameters end up in one
      # place and all of them are correctly included in the final request.
      u = URI.parse(path)
      unless u.query.nil?
        query_params ||= {}
        query_params = Hash[URI.decode_www_form(u.query)].merge(query_params)

        # Reset the path minus any query parameters that were specified.
        path = u.path
      end

      headers = request_headers(api_key, method)
                .update(Util.normalize_headers(headers))

      # stores information on the request we're about to make so that we don't
      # have to pass as many parameters around for logging.
      context = RequestLogContext.new
      context.api_key         = api_key
      context.body            = body
      context.method          = method
      context.path            = path
      context.query_params    = query_params ? Util.encode_parameters(query_params) : nil

      http_resp = execute_request_with_rescues(api_base, context) do
        conn.run_request(method, url, body, headers) do |req|
          req.options.open_timeout = Telnyx.open_timeout
          req.options.timeout = Telnyx.read_timeout
          req.params = query_params unless query_params.nil?
        end
      end

      begin
        resp = TelnyxResponse.from_faraday_response(http_resp)
      rescue JSON::ParserError
        raise general_api_error(http_resp.status, http_resp.body)
      end

      # Allows TelnyxClient#request to return a response object to a caller.
      @last_response = resp
      [resp, api_key]
    end

    private

    def api_url(url = "", api_base = nil)
      (api_base || Telnyx.api_base) + url
    end

    def check_api_key!(api_key)
      unless api_key
        raise AuthenticationError, "No API key provided. " \
          'Set your API key using "Telnyx.api_key = <API-KEY>". ' \
          "You can generate API keys from the Telnyx web interface. " \
          "See https://telnyx.com/api for details, or email support@telnyx.com " \
          "if you have any questions."
      end

      return unless api_key =~ /\s/

      raise AuthenticationError, "Your API key is invalid, as it contains " \
        "whitespace. (HINT: You can double-check your API key from the " \
        "Telnyx web interface. See https://telnyx.com/api for details, or " \
        "email support@telnyx.com if you have any questions.)"
    end

    def execute_request_with_rescues(api_base, context)
      num_retries = 0
      begin
        request_start = Time.now
        log_request(context, num_retries)
        resp = yield
        context = context.dup_from_response(resp)
        log_response(context, request_start, resp.status, resp.body)

      # We rescue all exceptions from a request so that we have an easy spot to
      # implement our retry logic across the board. We'll re-raise if it's a type
      # of exception that we didn't expect to handle.
      rescue StandardError => e
        # If we modify context we copy it into a new variable so as not to
        # taint the original on a retry.
        error_context = context

        if e.respond_to?(:response) && e.response
          error_context = context.dup_from_response(e.response)
          log_response(error_context, request_start,
                       e.response[:status], e.response[:body])
        else
          log_response_error(error_context, request_start, e)
        end

        if self.class.should_retry?(e, num_retries)
          num_retries += 1
          sleep self.class.sleep_time(num_retries)
          retry
        end

        case e
        when Faraday::Error
          if e.response
            handle_error_response(e.response, error_context)
          else
            handle_network_error(e, error_context, num_retries, api_base)
          end

        # Only handle errors when we know we can do so, and re-raise otherwise.
        # This should be pretty infrequent.
        else
          raise
        end
      end

      resp
    end

    def general_api_error(status, body)
      APIError.new("Invalid response object from API: #{body.inspect} " \
                   "(HTTP response code was #{status})",
                   http_status: status, http_body: body)
    end

    # Formats a plugin "app info" hash into a string that we can tack onto the
    # end of a User-Agent string where it'll be fairly prominent in places like
    # the Dashboard. Note that this formatting has been implemented to match
    # other libraries, and shouldn't be changed without universal consensus.
    def format_app_info(info)
      str = info[:name]
      str = "#{str}/#{info[:version]}" unless info[:version].nil?
      str = "#{str} (#{info[:url]})" unless info[:url].nil?
      str
    end

    def handle_error_response(http_resp, context)
      begin
        resp = TelnyxResponse.from_faraday_hash(http_resp)
        error_list = resp.data[:errors]

        raise TelnyxError, "Indeterminate error" unless error_list
      rescue JSON::ParserError, TelnyxError
        raise general_api_error(http_resp[:status], http_resp[:body])
      end

      error = specific_api_error(resp, error_list, context)

      error.response = resp
      raise(error)
    end

    def specific_api_error(resp, error_list, context)
      error_list.each do |error|
        Util.log_error("Telnyx API error",
                       status: resp.http_status,
                       error_code: error[:code],
                       error_detail: error[:detail],
                       error_source: error[:source],
                       error_title: error[:title],
                       request_id: context.request_id)
      end

      # The standard set of arguments that can be used to initialize most of
      # the exceptions.
      opts = {
        http_body: resp.http_body,
        http_headers: resp.http_headers,
        http_status: resp.http_status,
        json_body: resp.data,
      }

      err_class = case resp.http_status
                  when 400 then InvalidRequestError
                  when 401 then AuthenticationError
                  when 403 then PermissionError
                  when 404 then ResourceNotFoundError
                  when 405 then MethodNotSupportedError
                  when 408 then TimeoutError
                  when 422 then InvalidParametersError
                  when 429 then RateLimitError
                  when 500 then APIError
                  when 503 then ServiceUnavailableError
                  else APIError
                  end

      err_class.new(error_list, **opts)
    end

    def handle_network_error(e, context, num_retries, api_base = nil)
      Util.log_error("Telnyx network error",
                     error_message: e.message,
                     request_id: context.request_id)

      case e
      when Faraday::ConnectionFailed
        message = "Unexpected error communicating when trying to connect to Telnyx. " \
          "You may be seeing this message because your DNS is not working. " \
          "To check, try running 'host telnyx.com' from the command line."

      when Faraday::SSLError
        message = "Could not establish a secure connection to Telnyx, you may " \
                  "need to upgrade your OpenSSL version. To check, try running " \
                  "'openssl s_client -connect api.telnyx.com:443' from the " \
                  "command line."

      when Faraday::TimeoutError
        api_base ||= Telnyx.api_base
        message = "Could not connect to Telnyx (#{api_base}). " \
          "Please check your internet connection and try again. " \
          "If this problem persists, you should check Telnyx's service status at " \
          "https://status.telnyx.com, or let us know at support@telnyx.com."

      else
        message = "Unexpected error communicating with Telnyx. " \
          "If this problem persists, let us know at support@telnyx.com."

      end

      message += " Request was retried #{num_retries} times." if num_retries > 0

      raise APIConnectionError, message + "\n\n(Network error: #{e.message})"
    end

    def request_headers(api_key, _method)
      user_agent = "Telnyx/v2 RubyBindings/#{Telnyx::VERSION}"
      unless Telnyx.app_info.nil?
        user_agent += " " + format_app_info(Telnyx.app_info)
      end

      headers = {
        "User-Agent" => user_agent,
        "Authorization" => "Bearer #{api_key}",
        "Content-Type" => "application/json",
      }

      user_agent = @system_profiler.user_agent
      begin
        headers.update(
          "X-Telnyx-Client-User-Agent" => JSON.generate(user_agent)
        )
      rescue StandardError => e
        headers.update(
          "X-Telnyx-Client-Raw-User-Agent" => user_agent.inspect,
          :error => "#{e} (#{e.class})"
        )
      end

      headers
    end

    def log_request(context, num_retries)
      Util.log_info("Request to Telnyx API",
                    method: context.method,
                    num_retries: num_retries,
                    path: context.path)
      Util.log_debug("Request details",
                     body: context.body,
                     query_params: context.query_params)
    end
    private :log_request

    def log_response(context, request_start, status, body)
      Util.log_info("Response from Telnyx API",
                    elapsed: Time.now - request_start,
                    method: context.method,
                    path: context.path,
                    request_id: context.request_id,
                    status: status)
      Util.log_debug("Response details",
                     body: body,
                     request_id: context.request_id)

      return unless context.request_id
    end
    private :log_response

    def log_response_error(context, request_start, e)
      Util.log_error("Request error",
                     elapsed: Time.now - request_start,
                     error_message: e.message,
                     method: context.method,
                     path: context.path)
    end
    private :log_response_error

    # RequestLogContext stores information about a request that's begin made so
    # that we can log certain information. It's useful because it means that we
    # don't have to pass around as many parameters.
    class RequestLogContext
      attr_accessor :body
      attr_accessor :api_key
      attr_accessor :method
      attr_accessor :path
      attr_accessor :query_params
      attr_accessor :request_id

      # The idea with this method is that we might want to update some of
      # context information because a response that we've received from the API
      # contains information that's more authoritative than what we started
      # with for a request. For example, we should trust whatever came back in
      # a `Telnyx-Version` header beyond what configuration information that we
      # might have had available.
      def dup_from_response(resp)
        return self if resp.nil?

        # Faraday's API is a little unusual. Normally it'll produce a response
        # object with a `headers` method, but on error what it puts into
        # `e.response` is an untyped `Hash`.
        headers = if resp.is_a?(Faraday::Response)
                    resp.headers
                  else
                    resp[:headers]
                  end

        context = dup
        context.request_id = headers["X-Request-Id"]
        context
      end
    end

    # SystemProfiler extracts information about the system that we're running
    # in so that we can generate a rich user agent header to help debug
    # integrations.
    class SystemProfiler
      def self.uname
        if ::File.exist?("/proc/version")
          ::File.read("/proc/version").strip
        else
          case RbConfig::CONFIG["host_os"]
          when /linux|darwin|bsd|sunos|solaris|cygwin/i
            uname_from_system
          when /mswin|mingw/i
            uname_from_system_ver
          else
            "unknown platform"
          end
        end
      end

      def self.uname_from_system
        (`uname -a 2>/dev/null` || "").strip
      rescue Errno::ENOENT
        "uname executable not found"
      rescue Errno::ENOMEM # couldn't create subprocess
        "uname lookup failed"
      end

      def self.uname_from_system_ver
        (`ver` || "").strip
      rescue Errno::ENOENT
        "ver executable not found"
      rescue Errno::ENOMEM # couldn't create subprocess
        "uname lookup failed"
      end

      def initialize
        @uname = self.class.uname
      end

      def user_agent
        lang_version = "#{RUBY_VERSION} p#{RUBY_PATCHLEVEL} (#{RUBY_RELEASE_DATE})"

        {
          application: Telnyx.app_info,
          bindings_version: Telnyx::VERSION,
          lang: "ruby",
          lang_version: lang_version,
          platform: RUBY_PLATFORM,
          engine: defined?(RUBY_ENGINE) ? RUBY_ENGINE : "",
          publisher: "telnyx",
          uname: @uname,
          hostname: Socket.gethostname,
        }.delete_if { |_k, v| v.nil? }
      end
    end

    # TelnyxRequestMetrics tracks metadata to be reported to telnyx for metrics collection
    class TelnyxRequestMetrics
      # The Telnyx request ID of the response.
      attr_accessor :request_id

      # Request duration in milliseconds
      attr_accessor :request_duration_ms

      def initialize(request_id, request_duration_ms)
        self.request_id = request_id
        self.request_duration_ms = request_duration_ms
      end

      def payload
        { request_id: request_id, request_duration_ms: request_duration_ms }
      end
    end
  end
end
