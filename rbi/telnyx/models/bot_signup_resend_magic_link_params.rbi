# typed: strong

module Telnyx
  module Models
    class BotSignupResendMagicLinkParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::BotSignupResendMagicLinkParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Email address of the bot signup account to resend the magic link to.
      sig { returns(String) }
      attr_accessor :email

      sig do
        params(
          email: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Email address of the bot signup account to resend the magic link to.
        email:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { email: String, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
