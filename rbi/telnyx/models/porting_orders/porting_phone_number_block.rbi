# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class PortingPhoneNumberBlock < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrders::PortingPhoneNumberBlock,
              Telnyx::Internal::AnyHash
            )
          end

        # Specifies the activation ranges for this porting phone number block. The
        # activation range must be within the phone number range and should not overlap
        # with other activation ranges.
        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::PortingOrders::PortingPhoneNumberBlock::ActivationRange
              ]
            )
          )
        end
        attr_reader :activation_ranges

        sig do
          params(
            activation_ranges:
              T::Array[
                Telnyx::PortingOrders::PortingPhoneNumberBlock::ActivationRange::OrHash
              ]
          ).void
        end
        attr_writer :activation_ranges

        # Specifies the country code for this porting phone number block. It is a
        # two-letter ISO 3166-1 alpha-2 country code.
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # Specifies the phone number range for this porting phone number block.
        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrders::PortingPhoneNumberBlock::PhoneNumberRange
            )
          )
        end
        attr_reader :phone_number_range

        sig do
          params(
            phone_number_range:
              Telnyx::PortingOrders::PortingPhoneNumberBlock::PhoneNumberRange::OrHash
          ).void
        end
        attr_writer :phone_number_range

        # Specifies the phone number type for this porting phone number block.
        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrders::PortingPhoneNumberBlock::PhoneNumberType::TaggedSymbol
            )
          )
        end
        attr_reader :phone_number_type

        sig do
          params(
            phone_number_type:
              Telnyx::PortingOrders::PortingPhoneNumberBlock::PhoneNumberType::OrSymbol
          ).void
        end
        attr_writer :phone_number_type

        # Uniquely identifies this porting phone number block.
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
                Telnyx::PortingOrders::PortingPhoneNumberBlock::ActivationRange::OrHash
              ],
            country_code: String,
            created_at: Time,
            phone_number_range:
              Telnyx::PortingOrders::PortingPhoneNumberBlock::PhoneNumberRange::OrHash,
            phone_number_type:
              Telnyx::PortingOrders::PortingPhoneNumberBlock::PhoneNumberType::OrSymbol,
            record_type: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Uniquely identifies this porting phone number block.
          id: nil,
          # Specifies the activation ranges for this porting phone number block. The
          # activation range must be within the phone number range and should not overlap
          # with other activation ranges.
          activation_ranges: nil,
          # Specifies the country code for this porting phone number block. It is a
          # two-letter ISO 3166-1 alpha-2 country code.
          country_code: nil,
          # ISO 8601 formatted date indicating when the resource was created.
          created_at: nil,
          # Specifies the phone number range for this porting phone number block.
          phone_number_range: nil,
          # Specifies the phone number type for this porting phone number block.
          phone_number_type: nil,
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
                  Telnyx::PortingOrders::PortingPhoneNumberBlock::ActivationRange
                ],
              country_code: String,
              created_at: Time,
              phone_number_range:
                Telnyx::PortingOrders::PortingPhoneNumberBlock::PhoneNumberRange,
              phone_number_type:
                Telnyx::PortingOrders::PortingPhoneNumberBlock::PhoneNumberType::TaggedSymbol,
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
                Telnyx::PortingOrders::PortingPhoneNumberBlock::ActivationRange,
                Telnyx::Internal::AnyHash
              )
            end

          # Specifies the end of the activation range. It must be no more than the end of
          # the phone number range.
          sig { returns(T.nilable(String)) }
          attr_reader :end_at

          sig { params(end_at: String).void }
          attr_writer :end_at

          # Specifies the start of the activation range. Must be greater or equal the start
          # of the phone number range.
          sig { returns(T.nilable(String)) }
          attr_reader :start_at

          sig { params(start_at: String).void }
          attr_writer :start_at

          sig do
            params(end_at: String, start_at: String).returns(T.attached_class)
          end
          def self.new(
            # Specifies the end of the activation range. It must be no more than the end of
            # the phone number range.
            end_at: nil,
            # Specifies the start of the activation range. Must be greater or equal the start
            # of the phone number range.
            start_at: nil
          )
          end

          sig { override.returns({ end_at: String, start_at: String }) }
          def to_hash
          end
        end

        class PhoneNumberRange < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrders::PortingPhoneNumberBlock::PhoneNumberRange,
                Telnyx::Internal::AnyHash
              )
            end

          # Specifies the end of the phone number range for this porting phone number block.
          sig { returns(T.nilable(String)) }
          attr_reader :end_at

          sig { params(end_at: String).void }
          attr_writer :end_at

          # Specifies the start of the phone number range for this porting phone number
          # block.
          sig { returns(T.nilable(String)) }
          attr_reader :start_at

          sig { params(start_at: String).void }
          attr_writer :start_at

          # Specifies the phone number range for this porting phone number block.
          sig do
            params(end_at: String, start_at: String).returns(T.attached_class)
          end
          def self.new(
            # Specifies the end of the phone number range for this porting phone number block.
            end_at: nil,
            # Specifies the start of the phone number range for this porting phone number
            # block.
            start_at: nil
          )
          end

          sig { override.returns({ end_at: String, start_at: String }) }
          def to_hash
          end
        end

        # Specifies the phone number type for this porting phone number block.
        module PhoneNumberType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::PortingOrders::PortingPhoneNumberBlock::PhoneNumberType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LANDLINE =
            T.let(
              :landline,
              Telnyx::PortingOrders::PortingPhoneNumberBlock::PhoneNumberType::TaggedSymbol
            )
          LOCAL =
            T.let(
              :local,
              Telnyx::PortingOrders::PortingPhoneNumberBlock::PhoneNumberType::TaggedSymbol
            )
          MOBILE =
            T.let(
              :mobile,
              Telnyx::PortingOrders::PortingPhoneNumberBlock::PhoneNumberType::TaggedSymbol
            )
          NATIONAL =
            T.let(
              :national,
              Telnyx::PortingOrders::PortingPhoneNumberBlock::PhoneNumberType::TaggedSymbol
            )
          SHARED_COST =
            T.let(
              :shared_cost,
              Telnyx::PortingOrders::PortingPhoneNumberBlock::PhoneNumberType::TaggedSymbol
            )
          TOLL_FREE =
            T.let(
              :toll_free,
              Telnyx::PortingOrders::PortingPhoneNumberBlock::PhoneNumberType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PortingOrders::PortingPhoneNumberBlock::PhoneNumberType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
