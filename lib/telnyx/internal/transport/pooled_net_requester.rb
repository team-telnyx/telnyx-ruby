# frozen_string_literal: true

module Telnyx
  module Internal
    module Transport
      # @api private
      class PooledNetRequester
        extend Telnyx::Internal::Util::SorbetRuntimeSupport

        # from the golang stdlib
        # https://github.com/golang/go/blob/c8eced8580028328fde7c03cbfcb720ce15b2358/src/net/http/transport.go#L49
        KEEP_ALIVE_TIMEOUT = 30

        DEFAULT_MAX_CONNECTIONS = [Etc.nprocessors, 99].max

        class << self
          # @api private
          #
          # @param url [URI::Generic]
          #
          # @return [Net::HTTP]
          def connect(url)
            port =
              case [url.port, url.scheme]
              in [Integer, _]
                url.port
              in [nil, "http" | "ws"]
                Net::HTTP.http_default_port
              in [nil, "https" | "wss"]
                Net::HTTP.https_default_port
              end

            Net::HTTP.new(url.host, port).tap do
              _1.use_ssl = %w[https wss].include?(url.scheme)
              _1.max_retries = 0
            end
          end

          # @api private
          #
          # @param conn [Net::HTTP]
          # @param deadline [Float]
          def calibrate_socket_timeout(conn, deadline)
            timeout = deadline - Telnyx::Internal::Util.monotonic_secs
            conn.open_timeout = conn.read_timeout = conn.write_timeout = conn.continue_timeout = timeout
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
          # @param blk [Proc]
          #
          # @yieldparam [String]
          # @return [Array(Net::HTTPGenericRequest, Proc)]
          def build_request(request, &blk)
            method, url, headers, body = request.fetch_values(:method, :url, :headers, :body)
            req = Net::HTTPGenericRequest.new(
              method.to_s.upcase,
              !body.nil?,
              method != :head,
              URI(url.to_s) # ensure we construct a URI class of the right scheme
            )

            headers.each { req[_1] = _2 }

            case body
            in nil
              nil
            in String
              req["content-length"] ||= body.bytesize.to_s unless req["transfer-encoding"]
              req.body_stream = Telnyx::Internal::Util::ReadIOAdapter.new(body, &blk)
            in StringIO
              req["content-length"] ||= body.size.to_s unless req["transfer-encoding"]
              req.body_stream = Telnyx::Internal::Util::ReadIOAdapter.new(body, &blk)
            in Pathname | IO | Enumerator
              req["transfer-encoding"] ||= "chunked" unless req["content-length"]
              req.body_stream = Telnyx::Internal::Util::ReadIOAdapter.new(body, &blk)
            end

            [req, req.body_stream&.method(:close)]
          end
        end

        # @api private
        #
        # @param url [URI::Generic]
        # @param deadline [Float]
        # @param blk [Proc]
        #
        # @raise [Timeout::Error]
        # @yieldparam [Net::HTTP]
        private def with_pool(url, deadline:, &blk)
          origin = Telnyx::Internal::Util.uri_origin(url)
          timeout = deadline - Telnyx::Internal::Util.monotonic_secs
          pool =
            @mutex.synchronize do
              @pools[origin] ||= ConnectionPool.new(size: @size) do
                self.class.connect(url)
              end
            end

          pool.with(timeout: timeout, &blk)
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
        #   @option request [Float] :deadline
        #
        # @return [Array(Integer, Net::HTTPResponse, Enumerable<String>)]
        def execute(request)
          url, deadline = request.fetch_values(:url, :deadline)

          req = nil
          eof = false
          finished = false
          closing = nil

          # rubocop:disable Metrics/BlockLength
          enum = Enumerator.new do |y|
            with_pool(url, deadline: deadline) do |conn|
              next if finished

              req, closing = self.class.build_request(request) do
                self.class.calibrate_socket_timeout(conn, deadline)
              end

              self.class.calibrate_socket_timeout(conn, deadline)
              unless conn.started?
                conn.keep_alive_timeout = self.class::KEEP_ALIVE_TIMEOUT
                conn.start
              end

              self.class.calibrate_socket_timeout(conn, deadline)
              conn.request(req) do |rsp|
                y << [conn, req, rsp]
                break if finished

                rsp.read_body do |bytes|
                  y << bytes.force_encoding(Encoding::BINARY)
                  break if finished

                  self.class.calibrate_socket_timeout(conn, deadline)
                end
                eof = true
              end
            end
          rescue Timeout::Error
            raise Telnyx::Errors::APITimeoutError.new(url: url, request: req)
          rescue StandardError
            raise Telnyx::Errors::APIConnectionError.new(url: url, request: req)
          end
          # rubocop:enable Metrics/BlockLength

          conn, _, response = enum.next
          body = Telnyx::Internal::Util.fused_enum(enum, external: true) do
            finished = true
            tap do
              enum.next
            rescue StopIteration
              nil
            end
          ensure
            conn.finish if !eof && conn&.started?
            closing&.call
          end
          [Integer(response.code), response, body]
        end

        # @api private
        #
        # @param size [Integer]
        def initialize(size: self.class::DEFAULT_MAX_CONNECTIONS)
          @mutex = Mutex.new
          @size = size
          @pools = {}
        end

        define_sorbet_constant!(:Request) do
          T.type_alias { {method: Symbol, url: URI::Generic, headers: T::Hash[String, String], body: T.anything, deadline: Float} }
        end
      end
    end
  end
end
