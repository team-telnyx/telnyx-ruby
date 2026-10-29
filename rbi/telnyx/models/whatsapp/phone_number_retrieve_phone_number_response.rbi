# typed: strong

module Telnyx
  module Models
    module Whatsapp
      class PhoneNumberRetrievePhoneNumberResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::Whatsapp::WhatsappPhoneResponse) }
        attr_reader :data

        sig do
          params(data: Telnyx::Whatsapp::WhatsappPhoneResponse::OrHash).void
        end
        attr_writer :data

        sig do
          params(data: Telnyx::Whatsapp::WhatsappPhoneResponse::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data:)
        end

        sig do
          override.returns({ data: Telnyx::Whatsapp::WhatsappPhoneResponse })
        end
        def to_hash
        end
      end
    end
  end
end
