# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class PortingPhoneNumberExtension < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrders::PortingPhoneNumberExtension,
              Telnyx::Internal::AnyHash
            )
          end

        # Specifies the activation ranges for this porting phone number extension. The
        # activation range must be within the extension range and should not overlap with
        # other activation ranges.
        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::PortingOrders::PortingPhoneNumberExtension::ActivationRange
              ]
            )
          )
        end
        attr_reader :activation_ranges

        sig do
          params(
            activation_ranges:
              T::Array[
                Telnyx::PortingOrders::PortingPhoneNumberExtension::ActivationRange::OrHash
              ]
          ).void
        end
        attr_writer :activation_ranges

        # Specifies the extension range for this porting phone number extension.
        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrders::PortingPhoneNumberExtension::ExtensionRange
            )
          )
        end
        attr_reader :extension_range

        sig do
          params(
            extension_range:
              Telnyx::PortingOrders::PortingPhoneNumberExtension::ExtensionRange::OrHash
          ).void
        end
        attr_writer :extension_range

        # Identifies the porting phone number associated with this porting phone number
        # extension.
        sig { returns(T.nilable(String)) }
        attr_reader :porting_phone_number_id

        sig { params(porting_phone_number_id: String).void }
        attr_writer :porting_phone_number_id

        # Uniquely identifies this porting phone number extension.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # ISO 8601 formatted date indicating when the resource was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # ISO 8601 formatted date indicating when the resource was last updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            activation_ranges:
              T::Array[
                Telnyx::PortingOrders::PortingPhoneNumberExtension::ActivationRange::OrHash
              ],
            created_at: Time,
            extension_range:
              Telnyx::PortingOrders::PortingPhoneNumberExtension::ExtensionRange::OrHash,
            porting_phone_number_id: String,
            record_type: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Uniquely identifies this porting phone number extension.
          id: nil,
          # Specifies the activation ranges for this porting phone number extension. The
          # activation range must be within the extension range and should not overlap with
          # other activation ranges.
          activation_ranges: nil,
          # ISO 8601 formatted date indicating when the resource was created.
          created_at: nil,
          # Specifies the extension range for this porting phone number extension.
          extension_range: nil,
          # Identifies the porting phone number associated with this porting phone number
          # extension.
          porting_phone_number_id: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # ISO 8601 formatted date indicating when the resource was last updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              activation_ranges:
                T::Array[
                  Telnyx::PortingOrders::PortingPhoneNumberExtension::ActivationRange
                ],
              created_at: Time,
              extension_range:
                Telnyx::PortingOrders::PortingPhoneNumberExtension::ExtensionRange,
              porting_phone_number_id: String,
              record_type: String,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        class ActivationRange < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrders::PortingPhoneNumberExtension::ActivationRange,
                Telnyx::Internal::AnyHash
              )
            end

          # Specifies the end of the activation range. It must be no more than the end of
          # the extension range.
          sig { returns(T.nilable(Integer)) }
          attr_reader :end_at

          sig { params(end_at: Integer).void }
          attr_writer :end_at

          # Specifies the start of the activation range. Must be greater or equal the start
          # of the extension range.
          sig { returns(T.nilable(Integer)) }
          attr_reader :start_at

          sig { params(start_at: Integer).void }
          attr_writer :start_at

          sig do
            params(end_at: Integer, start_at: Integer).returns(T.attached_class)
          end
          def self.new(
            # Specifies the end of the activation range. It must be no more than the end of
            # the extension range.
            end_at: nil,
            # Specifies the start of the activation range. Must be greater or equal the start
            # of the extension range.
            start_at: nil
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
                Telnyx::PortingOrders::PortingPhoneNumberExtension::ExtensionRange,
                Telnyx::Internal::AnyHash
              )
            end

          # Specifies the end of the extension range for this porting phone number
          # extension.
          sig { returns(T.nilable(Integer)) }
          attr_reader :end_at

          sig { params(end_at: Integer).void }
          attr_writer :end_at

          # Specifies the start of the extension range for this porting phone number
          # extension.
          sig { returns(T.nilable(Integer)) }
          attr_reader :start_at

          sig { params(start_at: Integer).void }
          attr_writer :start_at

          # Specifies the extension range for this porting phone number extension.
          sig do
            params(end_at: Integer, start_at: Integer).returns(T.attached_class)
          end
          def self.new(
            # Specifies the end of the extension range for this porting phone number
            # extension.
            end_at: nil,
            # Specifies the start of the extension range for this porting phone number
            # extension.
            start_at: nil
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
