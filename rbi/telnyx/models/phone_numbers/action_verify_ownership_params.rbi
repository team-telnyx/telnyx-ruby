# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class ActionVerifyOwnershipParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::ActionVerifyOwnershipParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Array of phone numbers to verify ownership for
        sig { returns(T::Array[String]) }
        attr_accessor :phone_numbers

        sig do
          params(
            phone_numbers: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Array of phone numbers to verify ownership for
          phone_numbers:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              phone_numbers: T::Array[String],
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
