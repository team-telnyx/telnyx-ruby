# typed: strong

module Telnyx
  module Internal
    class OAuth2ClientCredentials
      sig do
        params(
          token_url: String,
          client_id: String,
          client_secret: String,
          timeout: Integer,
          client: T.anything
        ).void
      end
      def initialize(token_url:, client_id:, client_secret:, timeout:, client:)
      end

      # @api private
      sig { returns(T::Hash[String, String]) }
      def auth_headers
      end

      # @api private
      sig { returns(T::Boolean) }
      private def token_expired?
      end

      # @api private
      sig { returns(T.anything) }
      private def fetch_token
      end
    end
  end
end
