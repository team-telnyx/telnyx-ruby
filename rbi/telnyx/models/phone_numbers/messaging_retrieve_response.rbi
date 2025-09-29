# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class MessagingRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PhoneNumbers::MessagingRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::PhoneNumberWithMessagingSettings)) }
        attr_reader :data

        sig do
          params(data: Telnyx::PhoneNumberWithMessagingSettings::OrHash).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::PhoneNumberWithMessagingSettings::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns({ data: Telnyx::PhoneNumberWithMessagingSettings })
        end
        def to_hash
        end
      end
    end
  end
end
