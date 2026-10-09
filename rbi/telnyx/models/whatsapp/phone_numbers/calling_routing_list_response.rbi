# typed: strong

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        class CallingRoutingListResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Whatsapp::PhoneNumbers::CallingRoutingListResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(Telnyx::Whatsapp::PhoneNumbers::WhatsappCallingRoutingData)
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::Whatsapp::PhoneNumbers::WhatsappCallingRoutingData::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Telnyx::Whatsapp::PhoneNumbers::WhatsappCallingRoutingData::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data: Telnyx::Whatsapp::PhoneNumbers::WhatsappCallingRoutingData
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
