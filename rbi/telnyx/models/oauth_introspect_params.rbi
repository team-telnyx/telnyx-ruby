# typed: strong

module Telnyx
  module Models
    class OAuthIntrospectParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::OAuthIntrospectParams, Telnyx::Internal::AnyHash)
        end

      # The token to introspect
      sig { returns(String) }
      attr_accessor :token

      sig do
        params(
          token: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The token to introspect
        token:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { token: String, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
