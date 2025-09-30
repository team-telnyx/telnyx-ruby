# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class AssociatedPhoneNumberCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrders::AssociatedPhoneNumberCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Specifies the action to take with this phone number during partial porting.
        sig do
          returns(
            Telnyx::PortingOrders::AssociatedPhoneNumberCreateParams::Action::OrSymbol
          )
        end
        attr_accessor :action

        sig do
          returns(
            Telnyx::PortingOrders::AssociatedPhoneNumberCreateParams::PhoneNumberRange
          )
        end
        attr_reader :phone_number_range

        sig do
          params(
            phone_number_range:
              Telnyx::PortingOrders::AssociatedPhoneNumberCreateParams::PhoneNumberRange::OrHash
          ).void
        end
        attr_writer :phone_number_range

        sig do
          params(
            action:
              Telnyx::PortingOrders::AssociatedPhoneNumberCreateParams::Action::OrSymbol,
            phone_number_range:
              Telnyx::PortingOrders::AssociatedPhoneNumberCreateParams::PhoneNumberRange::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the action to take with this phone number during partial porting.
          action:,
          phone_number_range:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              action:
                Telnyx::PortingOrders::AssociatedPhoneNumberCreateParams::Action::OrSymbol,
              phone_number_range:
                Telnyx::PortingOrders::AssociatedPhoneNumberCreateParams::PhoneNumberRange,
              request_options: Telnyx::RequestOptions
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
                Telnyx::PortingOrders::AssociatedPhoneNumberCreateParams::Action
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          KEEP =
            T.let(
              :keep,
              Telnyx::PortingOrders::AssociatedPhoneNumberCreateParams::Action::TaggedSymbol
            )
          DISCONNECT =
            T.let(
              :disconnect,
              Telnyx::PortingOrders::AssociatedPhoneNumberCreateParams::Action::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PortingOrders::AssociatedPhoneNumberCreateParams::Action::TaggedSymbol
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
                Telnyx::PortingOrders::AssociatedPhoneNumberCreateParams::PhoneNumberRange,
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
      end
    end
  end
end
