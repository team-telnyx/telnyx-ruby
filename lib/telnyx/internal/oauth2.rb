# frozen_string_literal: true

module Telnyx
  module Internal
    class OAuth2ClientCredentials
      # @param token_url [String]
      # @param client_id [String]
      # @param client_secret [String]
      # @param timeout [Integer]
      # @param client [Object]
      def initialize(token_url:, client_id:, client_secret:, timeout:, client:)
        @token_url = token_url
        @client_id = client_id
        @client_secret = client_secret
        @client = client
        @timeout = timeout
        @token = nil
        @token_expires_at = nil
        @mutex = Thread::Mutex.new
      end

      # @api private
      #
      # @return [Hash{String=>String}]
      def auth_headers
        @mutex.synchronize do
          if @token && !token_expired?
            return {"Authorization" => "Bearer #{@token}"}
          end

          @token = nil
          @token_expires_at = nil

          token_response = fetch_token
          if token_response
            @token = token_response[:access_token]
            @token_expires_at = Time.now + token_response[:expires_in]

            return {"Authorization" => "Bearer #{@token}"}
          end

          {}
        end
      end

      # @api private
      #
      # @return [Boolean]
      private def token_expired?
        return true if @token_expires_at.nil? || @token.nil?

        # Consider token expired if it expires within 10 seconds
        Time.now > (@token_expires_at - 10)
      end

      # @api private
      #
      # @return [Object]
      private def fetch_token
        request = {
          method: :post,
          url: URI(@token_url),
          headers: {
            "Authorization" => "Basic #{Base64.strict_encode64("#{@client_id}:#{@client_secret}")}",
            "Content-Type" => "application/x-www-form-urlencoded"
          },
          body: "grant_type=client_credentials",
          max_retries: @client.max_retries,
          timeout: @timeout
        }
        _status, response, stream = @client.send_request(
          request,
          redirect_count: 0,
          retry_count: 0,
          send_retry_header: true
        )
        Telnyx::Internal::Util.decode_content(response, stream: stream)
      end
    end
  end
end
