# typed: strong

module Telnyx
  module Models
    ExternalConnectionPhoneNumber =
      ExternalConnections::ExternalConnectionPhoneNumber

    module ExternalConnections
      class ExternalConnectionPhoneNumber < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ExternalConnections::ExternalConnectionPhoneNumber,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::ExternalConnections::ExternalConnectionPhoneNumber::AcquiredCapability::TaggedSymbol
              ]
            )
          )
        end
        attr_reader :acquired_capabilities

        sig do
          params(
            acquired_capabilities:
              T::Array[
                Telnyx::ExternalConnections::ExternalConnectionPhoneNumber::AcquiredCapability::OrSymbol
              ]
          ).void
        end
        attr_writer :acquired_capabilities

        # Identifies the civic address assigned to the phone number.
        sig { returns(T.nilable(String)) }
        attr_reader :civic_address_id

        sig { params(civic_address_id: String).void }
        attr_writer :civic_address_id

        # The iso country code that will be displayed to the user when they receive a call
        # from this phone number.
        sig { returns(T.nilable(String)) }
        attr_reader :displayed_country_code

        sig { params(displayed_country_code: String).void }
        attr_writer :displayed_country_code

        # Identifies the location assigned to the phone number.
        sig { returns(T.nilable(String)) }
        attr_reader :location_id

        sig { params(location_id: String).void }
        attr_writer :location_id

        # Phone number ID from the Telnyx API.
        sig { returns(T.nilable(String)) }
        attr_reader :number_id

        sig { params(number_id: String).void }
        attr_writer :number_id

        # Phone number in E164 format.
        sig { returns(T.nilable(String)) }
        attr_reader :telephone_number

        sig { params(telephone_number: String).void }
        attr_writer :telephone_number

        # Uniquely identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :ticket_id

        sig { params(ticket_id: String).void }
        attr_writer :ticket_id

        sig do
          params(
            acquired_capabilities:
              T::Array[
                Telnyx::ExternalConnections::ExternalConnectionPhoneNumber::AcquiredCapability::OrSymbol
              ],
            civic_address_id: String,
            displayed_country_code: String,
            location_id: String,
            number_id: String,
            telephone_number: String,
            ticket_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          acquired_capabilities: nil,
          # Identifies the civic address assigned to the phone number.
          civic_address_id: nil,
          # The iso country code that will be displayed to the user when they receive a call
          # from this phone number.
          displayed_country_code: nil,
          # Identifies the location assigned to the phone number.
          location_id: nil,
          # Phone number ID from the Telnyx API.
          number_id: nil,
          # Phone number in E164 format.
          telephone_number: nil,
          # Uniquely identifies the resource.
          ticket_id: nil
        )
        end

        sig do
          override.returns(
            {
              acquired_capabilities:
                T::Array[
                  Telnyx::ExternalConnections::ExternalConnectionPhoneNumber::AcquiredCapability::TaggedSymbol
                ],
              civic_address_id: String,
              displayed_country_code: String,
              location_id: String,
              number_id: String,
              telephone_number: String,
              ticket_id: String
            }
          )
        end
        def to_hash
        end

        # The capabilities that are available for this phone number on Microsoft Teams.
        module AcquiredCapability
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::ExternalConnections::ExternalConnectionPhoneNumber::AcquiredCapability
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FIRST_PARTY_APP_ASSIGNMENT =
            T.let(
              :FirstPartyAppAssignment,
              Telnyx::ExternalConnections::ExternalConnectionPhoneNumber::AcquiredCapability::TaggedSymbol
            )
          INBOUND_CALLING =
            T.let(
              :InboundCalling,
              Telnyx::ExternalConnections::ExternalConnectionPhoneNumber::AcquiredCapability::TaggedSymbol
            )
          OFFICE365 =
            T.let(
              :Office365,
              Telnyx::ExternalConnections::ExternalConnectionPhoneNumber::AcquiredCapability::TaggedSymbol
            )
          OUTBOUND_CALLING =
            T.let(
              :OutboundCalling,
              Telnyx::ExternalConnections::ExternalConnectionPhoneNumber::AcquiredCapability::TaggedSymbol
            )
          USER_ASSIGNMENT =
            T.let(
              :UserAssignment,
              Telnyx::ExternalConnections::ExternalConnectionPhoneNumber::AcquiredCapability::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::ExternalConnections::ExternalConnectionPhoneNumber::AcquiredCapability::TaggedSymbol
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
