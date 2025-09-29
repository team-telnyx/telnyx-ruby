# typed: strong

module Telnyx
  module Models
    class OAuthGrantsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::OAuthGrantsParams, Telnyx::Internal::AnyHash)
        end

      # Whether the grant is allowed
      sig { returns(T::Boolean) }
      attr_accessor :allowed

      # Consent token
      sig { returns(String) }
      attr_accessor :consent_token

      sig do
        params(
          allowed: T::Boolean,
          consent_token: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Whether the grant is allowed
        allowed:,
        # Consent token
        consent_token:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            allowed: T::Boolean,
            consent_token: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
