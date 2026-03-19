# typed: strong

module Telnyx
  module Models
    module Whatsapp
      class MessageTemplateUpdateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Whatsapp::MessageTemplateUpdateResponse,
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
end
