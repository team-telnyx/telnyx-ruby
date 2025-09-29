# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class JobUpdateEmergencySettingsBatchParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::JobUpdateEmergencySettingsBatchParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Indicates whether to enable or disable emergency services on the numbers.
        sig { returns(T::Boolean) }
        attr_accessor :emergency_enabled

        sig { returns(T::Array[String]) }
        attr_accessor :phone_numbers

        # Identifies the address to be used with emergency services. Required if
        # emergency_enabled is true, must be null or omitted if emergency_enabled is
        # false.
        sig { returns(T.nilable(String)) }
        attr_accessor :emergency_address_id

        sig do
          params(
            emergency_enabled: T::Boolean,
            phone_numbers: T::Array[String],
            emergency_address_id: T.nilable(String),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates whether to enable or disable emergency services on the numbers.
          emergency_enabled:,
          phone_numbers:,
          # Identifies the address to be used with emergency services. Required if
          # emergency_enabled is true, must be null or omitted if emergency_enabled is
          # false.
          emergency_address_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              emergency_enabled: T::Boolean,
              phone_numbers: T::Array[String],
              emergency_address_id: T.nilable(String),
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
