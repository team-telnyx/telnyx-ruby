# typed: strong

module Telnyx
  module Models
    class DirBpoLoaParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::DirBpoLoaParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :dir_id

      # The approved BPO enterprise the Brand Owner is authorizing. Must be a BPO
      # account on the caller's organization that has already been approved.
      sig { returns(String) }
      attr_accessor :bpo_enterprise_id

      # Optional. When provided the rendered PDF embeds the signature image, printed
      # name, and signed-at date. When absent the PDF is returned unsigned so the Brand
      # Owner can sign externally and the BPO can upload it via the Documents API.
      sig { returns(T.nilable(Telnyx::SignaturePayload)) }
      attr_reader :signature

      sig { params(signature: Telnyx::SignaturePayload::OrHash).void }
      attr_writer :signature

      sig do
        params(
          dir_id: String,
          bpo_enterprise_id: String,
          signature: Telnyx::SignaturePayload::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        dir_id:,
        # The approved BPO enterprise the Brand Owner is authorizing. Must be a BPO
        # account on the caller's organization that has already been approved.
        bpo_enterprise_id:,
        # Optional. When provided the rendered PDF embeds the signature image, printed
        # name, and signed-at date. When absent the PDF is returned unsigned so the Brand
        # Owner can sign externally and the BPO can upload it via the Documents API.
        signature: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            dir_id: String,
            bpo_enterprise_id: String,
            signature: Telnyx::SignaturePayload,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
