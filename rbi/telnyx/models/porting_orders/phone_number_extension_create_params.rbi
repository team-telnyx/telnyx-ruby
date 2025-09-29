# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class PhoneNumberExtensionCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrders::PhoneNumberExtensionCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Specifies the activation ranges for this porting phone number extension. The
        # activation range must be within the extension range and should not overlap with
        # other activation ranges.
        sig do
          returns(
            T::Array[
              Telnyx::PortingOrders::PhoneNumberExtensionCreateParams::ActivationRange
            ]
          )
        end
        attr_accessor :activation_ranges

        sig do
          returns(
            Telnyx::PortingOrders::PhoneNumberExtensionCreateParams::ExtensionRange
          )
        end
        attr_reader :extension_range

        sig do
          params(
            extension_range:
              Telnyx::PortingOrders::PhoneNumberExtensionCreateParams::ExtensionRange::OrHash
          ).void
        end
        attr_writer :extension_range

        # Identifies the porting phone number associated with this porting phone number
        # extension.
        sig { returns(String) }
        attr_accessor :porting_phone_number_id

        sig do
          params(
            activation_ranges:
              T::Array[
                Telnyx::PortingOrders::PhoneNumberExtensionCreateParams::ActivationRange::OrHash
              ],
            extension_range:
              Telnyx::PortingOrders::PhoneNumberExtensionCreateParams::ExtensionRange::OrHash,
            porting_phone_number_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the activation ranges for this porting phone number extension. The
          # activation range must be within the extension range and should not overlap with
          # other activation ranges.
          activation_ranges:,
          extension_range:,
          # Identifies the porting phone number associated with this porting phone number
          # extension.
          porting_phone_number_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              activation_ranges:
                T::Array[
                  Telnyx::PortingOrders::PhoneNumberExtensionCreateParams::ActivationRange
                ],
              extension_range:
                Telnyx::PortingOrders::PhoneNumberExtensionCreateParams::ExtensionRange,
              porting_phone_number_id: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class ActivationRange < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrders::PhoneNumberExtensionCreateParams::ActivationRange,
                Telnyx::Internal::AnyHash
              )
            end

          # Specifies the end of the activation range. It must be no more than the end of
          # the extension range.
          sig { returns(Integer) }
          attr_accessor :end_at

          # Specifies the start of the activation range. Must be greater or equal the start
          # of the extension range.
          sig { returns(Integer) }
          attr_accessor :start_at

          sig do
            params(end_at: Integer, start_at: Integer).returns(T.attached_class)
          end
          def self.new(
            # Specifies the end of the activation range. It must be no more than the end of
            # the extension range.
            end_at:,
            # Specifies the start of the activation range. Must be greater or equal the start
            # of the extension range.
            start_at:
          )
          end

          sig { override.returns({ end_at: Integer, start_at: Integer }) }
          def to_hash
          end
        end

        class ExtensionRange < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrders::PhoneNumberExtensionCreateParams::ExtensionRange,
                Telnyx::Internal::AnyHash
              )
            end

          # Specifies the end of the extension range for this porting phone number
          # extension.
          sig { returns(Integer) }
          attr_accessor :end_at

          # Specifies the start of the extension range for this porting phone number
          # extension.
          sig { returns(Integer) }
          attr_accessor :start_at

          sig do
            params(end_at: Integer, start_at: Integer).returns(T.attached_class)
          end
          def self.new(
            # Specifies the end of the extension range for this porting phone number
            # extension.
            end_at:,
            # Specifies the start of the extension range for this porting phone number
            # extension.
            start_at:
          )
          end

          sig { override.returns({ end_at: Integer, start_at: Integer }) }
          def to_hash
          end
        end
      end
    end
  end
end
