# typed: strong

module Telnyx
  module Models
    class WhatsappMessageTemplateRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::WhatsappMessageTemplateRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::WhatsappTemplateData)) }
      attr_reader :data

      sig { params(data: Telnyx::WhatsappTemplateData::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::WhatsappTemplateData::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::WhatsappTemplateData }) }
      def to_hash
      end
    end
  end
end
