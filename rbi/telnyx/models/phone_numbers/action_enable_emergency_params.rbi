# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class ActionEnableEmergencyParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::ActionEnableEmergencyParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Identifies the address to be used with emergency services.
        sig { returns(String) }
        attr_accessor :emergency_address_id

        # Indicates whether to enable emergency services on this number.
        sig { returns(T::Boolean) }
        attr_accessor :emergency_enabled

        sig do
          params(
            id: String,
            emergency_address_id: String,
            emergency_enabled: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Identifies the address to be used with emergency services.
          emergency_address_id:,
          # Indicates whether to enable emergency services on this number.
          emergency_enabled:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              emergency_address_id: String,
              emergency_enabled: T::Boolean,
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
