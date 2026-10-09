# typed: strong

module Telnyx
  module Models
    class SignaturePayload < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::SignaturePayload, Telnyx::Internal::AnyHash)
        end

      # PNG image, base64-encoded.
      sig { returns(String) }
      attr_accessor :image_base64

      # Optional. When absent the rendered PDF falls back to the enterprise contact's
      # legal name.
      sig { returns(T.nilable(String)) }
      attr_accessor :signer_name

      sig do
        params(image_base64: String, signer_name: T.nilable(String)).returns(
          T.attached_class
        )
      end
      def self.new(
        # PNG image, base64-encoded.
        image_base64:,
        # Optional. When absent the rendered PDF falls back to the enterprise contact's
        # legal name.
        signer_name: nil
      )
      end

      sig do
        override.returns(
          { image_base64: String, signer_name: T.nilable(String) }
        )
      end
      def to_hash
      end
    end
  end
end
