# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class PhoneNumberConfigurationCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrders::PhoneNumberConfigurationCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::PortingOrders::PhoneNumberConfigurationCreateParams::PhoneNumberConfiguration
              ]
            )
          )
        end
        attr_reader :phone_number_configurations

        sig do
          params(
            phone_number_configurations:
              T::Array[
                Telnyx::PortingOrders::PhoneNumberConfigurationCreateParams::PhoneNumberConfiguration::OrHash
              ]
          ).void
        end
        attr_writer :phone_number_configurations

        sig do
          params(
            phone_number_configurations:
              T::Array[
                Telnyx::PortingOrders::PhoneNumberConfigurationCreateParams::PhoneNumberConfiguration::OrHash
              ],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(phone_number_configurations: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              phone_number_configurations:
                T::Array[
                  Telnyx::PortingOrders::PhoneNumberConfigurationCreateParams::PhoneNumberConfiguration
                ],
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class PhoneNumberConfiguration < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrders::PhoneNumberConfigurationCreateParams::PhoneNumberConfiguration,
                Telnyx::Internal::AnyHash
              )
            end

          # Identifies the porting phone number to be configured.
          sig { returns(String) }
          attr_accessor :porting_phone_number_id

          # Identifies the user bundle to be associated with the porting phone number.
          sig { returns(String) }
          attr_accessor :user_bundle_id

          sig do
            params(
              porting_phone_number_id: String,
              user_bundle_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Identifies the porting phone number to be configured.
            porting_phone_number_id:,
            # Identifies the user bundle to be associated with the porting phone number.
            user_bundle_id:
          )
          end

          sig do
            override.returns(
              { porting_phone_number_id: String, user_bundle_id: String }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
