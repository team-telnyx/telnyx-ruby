# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class PhoneNumberConfigurationCreateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PortingOrders::PhoneNumberConfigurationCreateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::PortingOrders::PortingPhoneNumberConfiguration]
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              T::Array[
                Telnyx::PortingOrders::PortingPhoneNumberConfiguration::OrHash
              ]
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              T::Array[
                Telnyx::PortingOrders::PortingPhoneNumberConfiguration::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[Telnyx::PortingOrders::PortingPhoneNumberConfiguration]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
