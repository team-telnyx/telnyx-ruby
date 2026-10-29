# typed: strong

module Telnyx
  module Models
    module Whatsapp
      class PhoneNumberGetResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Whatsapp::PhoneNumberGetResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(T::Array[Telnyx::Whatsapp::WhatsappPhoneResponse]))
        end
        attr_reader :data

        sig do
          params(
            data: T::Array[Telnyx::Whatsapp::WhatsappPhoneResponse::OrHash]
          ).void
        end
        attr_writer :data

        sig { returns(T.nilable(Telnyx::MessagingPaginationMeta)) }
        attr_reader :meta

        sig { params(meta: Telnyx::MessagingPaginationMeta::OrHash).void }
        attr_writer :meta

        sig do
          params(
            data: T::Array[Telnyx::Whatsapp::WhatsappPhoneResponse::OrHash],
            meta: Telnyx::MessagingPaginationMeta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil, meta: nil)
        end

        sig do
          override.returns(
            {
              data: T::Array[Telnyx::Whatsapp::WhatsappPhoneResponse],
              meta: Telnyx::MessagingPaginationMeta
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
