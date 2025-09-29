# frozen_string_literal: true

module Telnyx
  module Internal
    module Transport
      # @api private
      #
      # @abstract
      class BaseClient
        extend Telnyx::Internal::Util::SorbetRuntimeSupport

        # from whatwg fetch spec
        MAX_REDIRECTS = 20

        # rubocop:disable Style/MutableConstant
        PLATFORM_HEADERS =
          {
            "x-stainless-arch" => Telnyx::Internal::Util.arch,
            "x-stainless-lang" => "ruby",
            "x-stainless-os" => Telnyx::Internal::Util.os,
            "x-stainless-package-version" => Telnyx::VERSION,
            "x-stainless-runtime" => ::RUBY_ENGINE,
            "x-stainless-runtime-version" => ::RUBY_ENGINE_VERSION
          }
        # rubocop:enable Style/MutableConstant

        class << self
          # @api private
          #
          # @param req [Hash{Symbol=>Object}]
          #
          # @raise [ArgumentError]
          def validate!(req)
            keys = [:method, :path, :query, :headers, :body, :unwrap, :page, :stream, :model, :options]
            case req
            in Hash
              req.each_key do |k|
                unless keys.include?(k)
                  raise ArgumentError.new("Request `req` keys must be one of #{keys}, got #{k.inspect}")
                end
              end
            else
              raise ArgumentError.new("Request `req` must be a Hash or RequestOptions, got #{req.inspect}")
            end
          end

          # @api private
          #
          # @param status [Integer]
          # @param headers [Hash{String=>String}]
          #
          # @return [Boolean]
          def should_retry?(status, headers:)
            coerced = Telnyx::Internal::Util.coerce_boolean(headers["x-should-retry"])
            case [coerced, status]
            in [true | false, _]
              coerced
            in [_, 408 | 409 | 429 | (500..)]
              # retry on:
              # 408: timeouts
              # 409: locks
              # 429: rate limits
              # 500+: unknown errors
              true
            else
              false
            end
          end

          # @api private
          #
          # @param request [Hash{Symbol=>Object}] .
          #
          #   @option request [Symbol] :method
          #
          #   @option request [URI::Generic] :url
          #
          #   @option request [Hash{String=>String}] :headers
          #
          #   @option request [Object] :body
          #
          #   @option request [Integer] :max_retries
          #
          #   @option request [Float] :timeout
          #
          # @param status [Integer]
          #
          # @param response_headers [Hash{String=>String}]
          #
          # @return [Hash{Symbol=>Object}]
          def follow_redirect(request, status:, response_headers:)
            method, url, headers = request.fetch_values(:method, :url, :headers)
            location =
              Kernel.then do
                URI.join(url, response_headers["location"])
              rescue ArgumentError
                message = "Server responded with status #{status} but no valid location header."
                raise Telnyx::Errors::APIConnectionError.new(
                  url: url,
                  response: response_headers,
                  message: message
                )
              end

            request = {**request, url: location}

            case [url.scheme, location.scheme]
            in ["https", "http"]
              message = "Tried to redirect to a insecure URL"
              raise Telnyx::Errors::APIConnectionError.new(
                url: url,
                response: response_headers,
                message: message
              )
            else
              nil
            end

            # from whatwg fetch spec
            case [status, method]
            in [301 | 302, :post] | [303, _]
              drop = %w[content-encoding content-language content-length content-location content-type]
              request = {
                **request,
                method: method == :head ? :head : :get,
                headers: headers.except(*drop),
                body: nil
              }
            else
            end

            # from undici
            if Telnyx::Internal::Util.uri_origin(url) != Telnyx::Internal::Util.uri_origin(location)
              drop = %w[authorization cookie host proxy-authorization]
              request = {**request, headers: request.fetch(:headers).except(*drop)}
            end

            request
          end

          # @api private
          #
          # @param status [Integer, Telnyx::Errors::APIConnectionError]
          # @param stream [Enumerable<String>, nil]
          def reap_connection!(status, stream:)
            case status
            in (..199) | (300..499)
              stream&.each { next }
            in Telnyx::Errors::APIConnectionError | (500..)
              Telnyx::Internal::Util.close_fused!(stream)
            else
            end
          end
        end

        # @return [URI::Generic]
        attr_reader :base_url

        # @return [Float]
        attr_reader :timeout

        # @return [Integer]
        attr_reader :max_retries

        # @return [Float]
        attr_reader :initial_retry_delay

        # @return [Float]
        attr_reader :max_retry_delay

        # @return [Hash{String=>String}]
        attr_reader :headers

        # @return [String, nil]
        attr_reader :idempotency_header

        # @api private
        # @return [Telnyx::Internal::Transport::PooledNetRequester]
        attr_reader :requester

        # @api private
        #
        # @param base_url [String]
        # @param timeout [Float]
        # @param max_retries [Integer]
        # @param initial_retry_delay [Float]
        # @param max_retry_delay [Float]
        # @param headers [Hash{String=>String, Integer, Array<String, Integer, nil>, nil}]
        # @param idempotency_header [String, nil]
        def initialize(
          base_url:,
          timeout: 0.0,
          max_retries: 0,
          initial_retry_delay: 0.0,
          max_retry_delay: 0.0,
          headers: {},
          idempotency_header: nil
        )
          @requester = Telnyx::Internal::Transport::PooledNetRequester.new
          @headers = Telnyx::Internal::Util.normalized_headers(
            self.class::PLATFORM_HEADERS,
            {
              "accept" => "application/json",
              "content-type" => "application/json"
            },
            headers
          )
          @base_url_components = Telnyx::Internal::Util.parse_uri(base_url)
          @base_url = Telnyx::Internal::Util.unparse_uri(@base_url_components)
          @idempotency_header = idempotency_header&.to_s&.downcase
          @timeout = timeout
          @max_retries = max_retries
          @initial_retry_delay = initial_retry_delay
          @max_retry_delay = max_retry_delay
        end

        # @api private
        #
        # @return [Hash{String=>String}]
        private def auth_headers = {}

        # @api private
        #
        # @return [String]
        private def generate_idempotency_key = "stainless-ruby-retry-#{SecureRandom.uuid}"

        # @api private
        #
        # @param req [Hash{Symbol=>Object}] .
        #
        #   @option req [Symbol] :method
        #
        #   @option req [String, Array<String>] :path
        #
        #   @option req [Hash{String=>Array<String>, String, nil}, nil] :query
        #
        #   @option req [Hash{String=>String, Integer, Array<String, Integer, nil>, nil}, nil] :headers
        #
        #   @option req [Object, nil] :body
        #
        #   @option req [Symbol, Integer, Array<Symbol, Integer>, Proc, nil] :unwrap
        #
        #   @option req [Class<Telnyx::Internal::Type::BasePage>, nil] :page
        #
        #   @option req [Class<Telnyx::Internal::Type::BaseStream>, nil] :stream
        #
        #   @option req [Telnyx::Internal::Type::Converter, Class, nil] :model
        #
        # @param opts [Hash{Symbol=>Object}] .
        #
        #   @option opts [String, nil] :idempotency_key
        #
        #   @option opts [Hash{String=>Array<String>, String, nil}, nil] :extra_query
        #
        #   @option opts [Hash{String=>String, nil}, nil] :extra_headers
        #
        #   @option opts [Object, nil] :extra_body
        #
        #   @option opts [Integer, nil] :max_retries
        #
        #   @option opts [Float, nil] :timeout
        #
        # @return [Hash{Symbol=>Object}]
        private def build_request(req, opts)
          method, uninterpolated_path = req.fetch_values(:method, :path)

          path = Telnyx::Internal::Util.interpolate_path(uninterpolated_path)

          query = Telnyx::Internal::Util.deep_merge(req[:query].to_h, opts[:extra_query].to_h)

          headers = Telnyx::Internal::Util.normalized_headers(
            @headers,
            auth_headers,
            req[:headers].to_h,
            opts[:extra_headers].to_h
          )

          if @idempotency_header &&
             !headers.key?(@idempotency_header) &&
             (!Net::HTTP::IDEMPOTENT_METHODS_.include?(method.to_s.upcase) || opts.key?(:idempotency_key))
            headers[@idempotency_header] = opts.fetch(:idempotency_key) { generate_idempotency_key }
          end

          unless headers.key?("x-stainless-retry-count")
            headers["x-stainless-retry-count"] = "0"
          end

          timeout = opts.fetch(:timeout, @timeout).to_f.clamp(0..)
          unless headers.key?("x-stainless-timeout") || timeout.zero?
            headers["x-stainless-timeout"] = timeout.to_s
          end

          headers.reject! { |_, v| v.to_s.empty? }

          body =
            case method
            in :get | :head | :options | :trace
              nil
            else
              Telnyx::Internal::Util.deep_merge(*[req[:body], opts[:extra_body]].compact)
            end

          url = Telnyx::Internal::Util.join_parsed_uri(
            @base_url_components,
            {**req, path: path, query: query}
          )
          headers, encoded = Telnyx::Internal::Util.encode_content(headers, body)
          {
            method: method,
            url: url,
            headers: headers,
            body: encoded,
            max_retries: opts.fetch(:max_retries, @max_retries),
            timeout: timeout
          }
        end

        # @api private
        #
        # @param headers [Hash{String=>String}]
        # @param retry_count [Integer]
        #
        # @return [Float]
        private def retry_delay(headers, retry_count:)
          # Non-standard extension
          span = Float(headers["retry-after-ms"], exception: false)&.then { _1 / 1000 }
          return span if span

          retry_header = headers["retry-after"]
          return span if (span = Float(retry_header, exception: false))

          span = retry_header&.then do
            Time.httpdate(_1) - Time.now
          rescue ArgumentError
            nil
          end
          return span if span

          scale = retry_count**2
          jitter = 1 - (0.25 * rand)
          (@initial_retry_delay * scale * jitter).clamp(0, @max_retry_delay)
        end

        # @api private
        #
        # @param request [Hash{Symbol=>Object}] .
        #
        #   @option request [Symbol] :method
        #
        #   @option request [URI::Generic] :url
        #
        #   @option request [Hash{String=>String}] :headers
        #
        #   @option request [Object] :body
        #
        #   @option request [Integer] :max_retries
        #
        #   @option request [Float] :timeout
        #
        # @param redirect_count [Integer]
        #
        # @param retry_count [Integer]
        #
        # @param send_retry_header [Boolean]
        #
        # @raise [Telnyx::Errors::APIError]
        # @return [Array(Integer, Net::HTTPResponse, Enumerable<String>)]
        def send_request(request, redirect_count:, retry_count:, send_retry_header:)
          url, headers, max_retries, timeout = request.fetch_values(:url, :headers, :max_retries, :timeout)
          input = {**request.except(:timeout), deadline: Telnyx::Internal::Util.monotonic_secs + timeout}

          if send_retry_header
            headers["x-stainless-retry-count"] = retry_count.to_s
          end

          begin
            status, response, stream = @requester.execute(input)
          rescue Telnyx::Errors::APIConnectionError => e
            status = e
          end
          headers = Telnyx::Internal::Util.normalized_headers(response&.each_header&.to_h)

          case status
          in ..299
            [status, response, stream]
          in 300..399 if redirect_count >= self.class::MAX_REDIRECTS
            self.class.reap_connection!(status, stream: stream)

            message = "Failed to complete the request within #{self.class::MAX_REDIRECTS} redirects."
            raise Telnyx::Errors::APIConnectionError.new(url: url, response: response, message: message)
          in 300..399
            self.class.reap_connection!(status, stream: stream)

            request = self.class.follow_redirect(request, status: status, response_headers: headers)
            send_request(
              request,
              redirect_count: redirect_count + 1,
              retry_count: retry_count,
              send_retry_header: send_retry_header
            )
          in Telnyx::Errors::APIConnectionError if retry_count >= max_retries
            raise status
          in (400..) if retry_count >= max_retries || !self.class.should_retry?(status, headers: headers)
            decoded = Kernel.then do
              Telnyx::Internal::Util.decode_content(headers, stream: stream, suppress_error: true)
            ensure
              self.class.reap_connection!(status, stream: stream)
            end

            raise Telnyx::Errors::APIStatusError.for(
              url: url,
              status: status,
              headers: headers,
              body: decoded,
              request: nil,
              response: response
            )
          in (400..) | Telnyx::Errors::APIConnectionError
            self.class.reap_connection!(status, stream: stream)

            delay = retry_delay(response || {}, retry_count: retry_count)
            sleep(delay)

            send_request(
              request,
              redirect_count: redirect_count,
              retry_count: retry_count + 1,
              send_retry_header: send_retry_header
            )
          end
        end

        # Execute the request specified by `req`. This is the method that all resource
        # methods call into.
        #
        # @overload request(method, path, query: {}, headers: {}, body: nil, unwrap: nil, page: nil, stream: nil, model: Telnyx::Internal::Type::Unknown, options: {})
        #
        # @param method [Symbol]
        #
        # @param path [String, Array<String>]
        #
        # @param query [Hash{String=>Array<String>, String, nil}, nil]
        #
        # @param headers [Hash{String=>String, Integer, Array<String, Integer, nil>, nil}, nil]
        #
        # @param body [Object, nil]
        #
        # @param unwrap [Symbol, Integer, Array<Symbol, Integer>, Proc, nil]
        #
        # @param page [Class<Telnyx::Internal::Type::BasePage>, nil]
        #
        # @param stream [Class<Telnyx::Internal::Type::BaseStream>, nil]
        #
        # @param model [Telnyx::Internal::Type::Converter, Class, nil]
        #
        # @param options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil] .
        #
        #   @option options [String, nil] :idempotency_key
        #
        #   @option options [Hash{String=>Array<String>, String, nil}, nil] :extra_query
        #
        #   @option options [Hash{String=>String, nil}, nil] :extra_headers
        #
        #   @option options [Object, nil] :extra_body
        #
        #   @option options [Integer, nil] :max_retries
        #
        #   @option options [Float, nil] :timeout
        #
        # @raise [Telnyx::Errors::APIError]
        # @return [Object]
        def request(req)
          self.class.validate!(req)
          model = req.fetch(:model) { Telnyx::Internal::Type::Unknown }
          opts = req[:options].to_h
          unwrap = req[:unwrap]
          Telnyx::RequestOptions.validate!(opts)
          request = build_request(req.except(:options), opts)
          url = request.fetch(:url)

          # Don't send the current retry count in the headers if the caller modified the header defaults.
          send_retry_header = request.fetch(:headers)["x-stainless-retry-count"] == "0"
          status, response, stream = send_request(
            request,
            redirect_count: 0,
            retry_count: 0,
            send_retry_header: send_retry_header
          )

          headers = Telnyx::Internal::Util.normalized_headers(response.each_header.to_h)
          decoded = Telnyx::Internal::Util.decode_content(headers, stream: stream)
          case req
          in {stream: Class => st}
            st.new(
              model: model,
              url: url,
              status: status,
              headers: headers,
              response: response,
              unwrap: unwrap,
              stream: decoded
            )
          in {page: Class => page}
            page.new(client: self, req: req, headers: headers, page_data: decoded)
          else
            unwrapped = Telnyx::Internal::Util.dig(decoded, unwrap)
            Telnyx::Internal::Type::Converter.coerce(model, unwrapped)
          end
        end

        # @api private
        #
        # @return [String]
        def inspect
          # rubocop:disable Layout/LineLength
          "#<#{self.class.name}:0x#{object_id.to_s(16)} base_url=#{@base_url} max_retries=#{@max_retries} timeout=#{@timeout}>"
          # rubocop:enable Layout/LineLength
        end

        define_sorbet_constant!(:RequestComponents) do
          T.type_alias do
            {
              method: Symbol,
              path: T.any(String, T::Array[String]),
              query: T.nilable(T::Hash[String, T.nilable(T.any(T::Array[String], String))]),
              headers: T.nilable(
                T::Hash[String,
                        T.nilable(
                          T.any(
                            String,
                            Integer,
                            T::Array[T.nilable(T.any(String, Integer))]
                          )
                        )]
              ),
              body: T.nilable(T.anything),
              unwrap: T.nilable(
                T.any(
                  Symbol,
                  Integer,
                  T::Array[T.any(Symbol, Integer)],
                  T.proc.params(arg0: T.anything).returns(T.anything)
                )
              ),
              page: T.nilable(T::Class[Telnyx::Internal::Type::BasePage[Telnyx::Internal::Type::BaseModel]]),
              stream: T.nilable(T::Class[T.anything]),
              model: T.nilable(Telnyx::Internal::Type::Converter::Input),
              options: T.nilable(Telnyx::RequestOptions::OrHash)
            }
          end
        end
        define_sorbet_constant!(:RequestInput) do
          T.type_alias do
            {
              method: Symbol,
              url: URI::Generic,
              headers: T::Hash[String, String],
              body: T.anything,
              max_retries: Integer,
              timeout: Float
            }
          end
        end
      end
    end
  end
end
