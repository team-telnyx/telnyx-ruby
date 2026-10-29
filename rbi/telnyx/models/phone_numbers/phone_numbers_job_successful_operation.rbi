# typed: strong

module Telnyx
  module Models
    PhoneNumbersJobSuccessfulOperation =
      PhoneNumbers::PhoneNumbersJobSuccessfulOperation

    module PhoneNumbers
      class PhoneNumbersJobSuccessfulOperation < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::PhoneNumbersJobSuccessfulOperation,
              Telnyx::Internal::AnyHash
            )
          end

        # The phone number's ID
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The phone number in e164 format.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        sig do
          params(id: String, phone_number: String).returns(T.attached_class)
        end
        def self.new(
          # The phone number's ID
          id: nil,
          # The phone number in e164 format.
          phone_number: nil
        )
        end

        sig { override.returns({ id: String, phone_number: String }) }
        def to_hash
        end
      end
    end
  end
end
