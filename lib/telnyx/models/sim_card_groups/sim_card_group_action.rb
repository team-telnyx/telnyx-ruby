# frozen_string_literal: true

module Telnyx
  module Models
    module SimCardGroups
      # @see Telnyx::Resources::SimCardGroups::Actions#list
      class SimCardGroupAction < Telnyx::Internal::Type::BaseModel
        # @!attribute settings
        #   A JSON object representation of the action params.
        #
        #   @return [Telnyx::Models::SimCardGroups::SimCardGroupAction::Settings, nil]
        optional :settings, -> { Telnyx::SimCardGroups::SimCardGroupAction::Settings }

        # @!attribute sim_card_group_id
        #   The SIM card group identification.
        #
        #   @return [String, nil]
        optional :sim_card_group_id, String

        # @!attribute status
        #
        #   @return [Symbol, Telnyx::Models::SimCardGroups::SimCardGroupAction::Status, nil]
        optional :status, enum: -> { Telnyx::SimCardGroups::SimCardGroupAction::Status }

        # @!attribute type
        #   Represents the type of the operation requested.
        #
        #   @return [Symbol, Telnyx::Models::SimCardGroups::SimCardGroupAction::Type, nil]
        optional :type, enum: -> { Telnyx::SimCardGroups::SimCardGroupAction::Type }

        response_only do
          # @!attribute id
          #   Identifies the resource.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #   ISO 8601 formatted date-time indicating when the resource was created.
          #
          #   @return [String, nil]
          optional :created_at, String

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute updated_at
          #   ISO 8601 formatted date-time indicating when the resource was updated.
          #
          #   @return [String, nil]
          optional :updated_at, String
        end

        # @!method initialize(id: nil, created_at: nil, record_type: nil, settings: nil, sim_card_group_id: nil, status: nil, type: nil, updated_at: nil)
        #   This object represents a SIM card group action request. It allows tracking the
        #   current status of an operation that impacts the SIM card group and SIM card in
        #   it.
        #
        #   @param id [String] Identifies the resource.
        #
        #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @param record_type [String]
        #
        #   @param settings [Telnyx::Models::SimCardGroups::SimCardGroupAction::Settings] A JSON object representation of the action params.
        #
        #   @param sim_card_group_id [String] The SIM card group identification.
        #
        #   @param status [Symbol, Telnyx::Models::SimCardGroups::SimCardGroupAction::Status]
        #
        #   @param type [Symbol, Telnyx::Models::SimCardGroups::SimCardGroupAction::Type] Represents the type of the operation requested.
        #
        #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.

        # @see Telnyx::Models::SimCardGroups::SimCardGroupAction#settings
        class Settings < Telnyx::Internal::Type::BaseModel
          # @!attribute private_wireless_gateway_id
          #   The identification of the related Private Wireless Gateway resource.
          #
          #   @return [String, nil]
          optional :private_wireless_gateway_id, String

          # @!method initialize(private_wireless_gateway_id: nil)
          #   A JSON object representation of the action params.
          #
          #   @param private_wireless_gateway_id [String] The identification of the related Private Wireless Gateway resource.
        end

        # @see Telnyx::Models::SimCardGroups::SimCardGroupAction#status
        module Status
          extend Telnyx::Internal::Type::Enum

          IN_PROGRESS = :"in-progress"
          COMPLETED = :completed
          FAILED = :failed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Represents the type of the operation requested.
        #
        # @see Telnyx::Models::SimCardGroups::SimCardGroupAction#type
        module Type
          extend Telnyx::Internal::Type::Enum

          SET_PRIVATE_WIRELESS_GATEWAY = :set_private_wireless_gateway
          REMOVE_PRIVATE_WIRELESS_GATEWAY = :remove_private_wireless_gateway
          SET_WIRELESS_BLOCKLIST = :set_wireless_blocklist
          REMOVE_WIRELESS_BLOCKLIST = :remove_wireless_blocklist

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    SimCardGroupAction = SimCardGroups::SimCardGroupAction
  end
end
