# typed: strong

module Telnyx
  module Models
    class BotSessionListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::BotSessionListParams, Telnyx::Internal::AnyHash)
        end

      # Email address associated with the magic link token.
      sig { returns(String) }
      attr_accessor :email

      # Single-use portal redirect (magic link) token, a UUIDv7 sent to the account
      # owner's email.
      sig { returns(String) }
      attr_accessor :portal_redirect_token

      sig do
        params(
          email: String,
          portal_redirect_token: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Email address associated with the magic link token.
        email:,
        # Single-use portal redirect (magic link) token, a UUIDv7 sent to the account
        # owner's email.
        portal_redirect_token:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            email: String,
            portal_redirect_token: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
