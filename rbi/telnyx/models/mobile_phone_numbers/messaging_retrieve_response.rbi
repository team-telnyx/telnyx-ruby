# typed: strong

module Telnyx
  module Models
    module MobilePhoneNumbers
      class MessagingRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MobilePhoneNumbers::MessagingRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::MobilePhoneNumbers::MobilePhoneNumberWithMessagingSettings
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::MobilePhoneNumbers::MobilePhoneNumberWithMessagingSettings::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::MobilePhoneNumbers::MobilePhoneNumberWithMessagingSettings::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::MobilePhoneNumbers::MobilePhoneNumberWithMessagingSettings
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
