# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class PortingAssociatedPhoneNumber < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrders::PortingAssociatedPhoneNumber,
              Telnyx::Internal::AnyHash
            )
          end

        # Specifies the action to take with this phone number during partial porting.
        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrders::PortingAssociatedPhoneNumber::Action::TaggedSymbol
            )
          )
        end
        attr_reader :action

        sig do
          params(
            action:
              Telnyx::PortingOrders::PortingAssociatedPhoneNumber::Action::OrSymbol
          ).void
        end
        attr_writer :action

        # Specifies the country code for this associated phone number. It is a two-letter
        # ISO 3166-1 alpha-2 country code.
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # Specifies the phone number range for this associated phone number.
        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberRange
            )
          )
        end
        attr_reader :phone_number_range

        sig do
          params(
            phone_number_range:
              Telnyx::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberRange::OrHash
          ).void
        end
        attr_writer :phone_number_range

        # Specifies the phone number type for this associated phone number.
        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberType::TaggedSymbol
            )
          )
        end
        attr_reader :phone_number_type

        sig do
          params(
            phone_number_type:
              Telnyx::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberType::OrSymbol
          ).void
        end
        attr_writer :phone_number_type

        # Identifies the porting order associated with this phone number.
        sig { returns(T.nilable(String)) }
        attr_reader :porting_order_id

        sig { params(porting_order_id: String).void }
        attr_writer :porting_order_id

        # Uniquely identifies this associated phone number.
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
            action:
              Telnyx::PortingOrders::PortingAssociatedPhoneNumber::Action::OrSymbol,
            country_code: String,
            created_at: Time,
            phone_number_range:
              Telnyx::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberRange::OrHash,
            phone_number_type:
              Telnyx::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberType::OrSymbol,
            porting_order_id: String,
            record_type: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Uniquely identifies this associated phone number.
          id: nil,
          # Specifies the action to take with this phone number during partial porting.
          action: nil,
          # Specifies the country code for this associated phone number. It is a two-letter
          # ISO 3166-1 alpha-2 country code.
          country_code: nil,
          # ISO 8601 formatted date indicating when the resource was created.
          created_at: nil,
          # Specifies the phone number range for this associated phone number.
          phone_number_range: nil,
          # Specifies the phone number type for this associated phone number.
          phone_number_type: nil,
          # Identifies the porting order associated with this phone number.
          porting_order_id: nil,
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
              action:
                Telnyx::PortingOrders::PortingAssociatedPhoneNumber::Action::TaggedSymbol,
              country_code: String,
              created_at: Time,
              phone_number_range:
                Telnyx::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberRange,
              phone_number_type:
                Telnyx::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberType::TaggedSymbol,
              porting_order_id: String,
              record_type: String,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # Specifies the action to take with this phone number during partial porting.
        module Action
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::PortingOrders::PortingAssociatedPhoneNumber::Action
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          KEEP =
            T.let(
              :keep,
              Telnyx::PortingOrders::PortingAssociatedPhoneNumber::Action::TaggedSymbol
            )
          DISCONNECT =
            T.let(
              :disconnect,
              Telnyx::PortingOrders::PortingAssociatedPhoneNumber::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PortingOrders::PortingAssociatedPhoneNumber::Action::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class PhoneNumberRange < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberRange,
                Telnyx::Internal::AnyHash
              )
            end

          # Specifies the end of the phone number range for this associated phone number.
          sig { returns(T.nilable(String)) }
          attr_reader :end_at

          sig { params(end_at: String).void }
          attr_writer :end_at

          # Specifies the start of the phone number range for this associated phone number.
          sig { returns(T.nilable(String)) }
          attr_reader :start_at

          sig { params(start_at: String).void }
          attr_writer :start_at

          # Specifies the phone number range for this associated phone number.
          sig do
            params(end_at: String, start_at: String).returns(T.attached_class)
          end
          def self.new(
            # Specifies the end of the phone number range for this associated phone number.
            end_at: nil,
            # Specifies the start of the phone number range for this associated phone number.
            start_at: nil
          )
          end

          sig { override.returns({ end_at: String, start_at: String }) }
          def to_hash
          end
        end

        # Specifies the phone number type for this associated phone number.
        module PhoneNumberType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LANDLINE =
            T.let(
              :landline,
              Telnyx::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberType::TaggedSymbol
            )
          LOCAL =
            T.let(
              :local,
              Telnyx::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberType::TaggedSymbol
            )
          MOBILE =
            T.let(
              :mobile,
              Telnyx::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberType::TaggedSymbol
            )
          NATIONAL =
            T.let(
              :national,
              Telnyx::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberType::TaggedSymbol
            )
          SHARED_COST =
            T.let(
              :shared_cost,
              Telnyx::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberType::TaggedSymbol
            )
          TOLL_FREE =
            T.let(
              :toll_free,
              Telnyx::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PortingOrders::PortingAssociatedPhoneNumber::PhoneNumberType::TaggedSymbol
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
