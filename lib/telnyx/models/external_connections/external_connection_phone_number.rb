# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::PhoneNumbers#list
      class ExternalConnectionPhoneNumber < Telnyx::Internal::Type::BaseModel
        # @!attribute acquired_capabilities
        #
        #   @return [Array<Symbol, Telnyx::Models::ExternalConnections::ExternalConnectionPhoneNumber::AcquiredCapability>, nil]
        optional :acquired_capabilities,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::ExternalConnections::ExternalConnectionPhoneNumber::AcquiredCapability] }

        # @!attribute civic_address_id
        #   Identifies the civic address assigned to the phone number.
        #
        #   @return [String, nil]
        optional :civic_address_id, String

        # @!attribute displayed_country_code
        #   The iso country code that will be displayed to the user when they receive a call
        #   from this phone number.
        #
        #   @return [String, nil]
        optional :displayed_country_code, String

        # @!attribute location_id
        #   Identifies the location assigned to the phone number.
        #
        #   @return [String, nil]
        optional :location_id, String

        # @!attribute number_id
        #   Phone number ID from the Telnyx API.
        #
        #   @return [String, nil]
        optional :number_id, String

        # @!attribute telephone_number
        #   Phone number in E164 format.
        #
        #   @return [String, nil]
        optional :telephone_number, String

        # @!attribute ticket_id
        #   Uniquely identifies the resource.
        #
        #   @return [String, nil]
        optional :ticket_id, String

        # @!method initialize(acquired_capabilities: nil, civic_address_id: nil, displayed_country_code: nil, location_id: nil, number_id: nil, telephone_number: nil, ticket_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ExternalConnections::ExternalConnectionPhoneNumber} for more
        #   details.
        #
        #   @param acquired_capabilities [Array<Symbol, Telnyx::Models::ExternalConnections::ExternalConnectionPhoneNumber::AcquiredCapability>]
        #
        #   @param civic_address_id [String] Identifies the civic address assigned to the phone number.
        #
        #   @param displayed_country_code [String] The iso country code that will be displayed to the user when they receive a call
        #
        #   @param location_id [String] Identifies the location assigned to the phone number.
        #
        #   @param number_id [String] Phone number ID from the Telnyx API.
        #
        #   @param telephone_number [String] Phone number in E164 format.
        #
        #   @param ticket_id [String] Uniquely identifies the resource.

        # The capabilities that are available for this phone number on Microsoft Teams.
        module AcquiredCapability
          extend Telnyx::Internal::Type::Enum

          FIRST_PARTY_APP_ASSIGNMENT = :FirstPartyAppAssignment
          INBOUND_CALLING = :InboundCalling
          OFFICE365 = :Office365
          OUTBOUND_CALLING = :OutboundCalling
          USER_ASSIGNMENT = :UserAssignment

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    ExternalConnectionPhoneNumber = ExternalConnections::ExternalConnectionPhoneNumber
  end
end
