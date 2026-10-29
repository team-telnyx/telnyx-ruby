# typed: strong

module Telnyx
  module Models
    class TelephonyCredentialRetrieveTokenMaterialResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::TelephonyCredentialRetrieveTokenMaterialResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # What a server needs to mint login tokens for the credential itself, with no
      # request per token (`TelephonyCredential#to_jwt` in telnyx-ruby 3.1.0 or later).
      # As sensitive as `sip_password`: keep it on the server.
      sig { returns(T.nilable(Telnyx::TokenMaterial)) }
      attr_reader :data

      sig { params(data: Telnyx::TokenMaterial::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::TokenMaterial::OrHash).returns(T.attached_class)
      end
      def self.new(
        # What a server needs to mint login tokens for the credential itself, with no
        # request per token (`TelephonyCredential#to_jwt` in telnyx-ruby 3.1.0 or later).
        # As sensitive as `sip_password`: keep it on the server.
        data: nil
      )
      end

      sig { override.returns({ data: Telnyx::TokenMaterial }) }
      def to_hash
      end
    end
  end
end
