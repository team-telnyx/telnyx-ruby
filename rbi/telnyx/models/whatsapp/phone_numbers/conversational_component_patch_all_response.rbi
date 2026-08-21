# typed: strong

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        class ConversationalComponentPatchAllResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::Whatsapp::PhoneNumbers::WhatsappConversationalComponent
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::Whatsapp::PhoneNumbers::WhatsappConversationalComponent::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Telnyx::Whatsapp::PhoneNumbers::WhatsappConversationalComponent::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data: nil)
          end

          sig do
            override.returns(
              {
                data:
                  Telnyx::Whatsapp::PhoneNumbers::WhatsappConversationalComponent
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
