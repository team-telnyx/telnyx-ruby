# frozen_string_literal: true

module Telnyx
  module Models
    module SimCardGroups
      # @see Telnyx::Resources::SimCardGroups::Actions#list
      class ActionListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter_sim_card_group_id
        #   A valid SIM card group ID.
        #
        #   @return [String, nil]
        optional :filter_sim_card_group_id, String

        # @!attribute filter_status
        #   Filter by a specific status of the resource's lifecycle.
        #
        #   @return [Symbol, Telnyx::Models::SimCardGroups::ActionListParams::FilterStatus, nil]
        optional :filter_status, enum: -> { Telnyx::SimCardGroups::ActionListParams::FilterStatus }

        # @!attribute filter_type
        #   Filter by action type.
        #
        #   @return [Symbol, Telnyx::Models::SimCardGroups::ActionListParams::FilterType, nil]
        optional :filter_type, enum: -> { Telnyx::SimCardGroups::ActionListParams::FilterType }

        # @!attribute page_number
        #   The page number to load.
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   The size of the page.
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!method initialize(filter_sim_card_group_id: nil, filter_status: nil, filter_type: nil, page_number: nil, page_size: nil, request_options: {})
        #   @param filter_sim_card_group_id [String] A valid SIM card group ID.
        #
        #   @param filter_status [Symbol, Telnyx::Models::SimCardGroups::ActionListParams::FilterStatus] Filter by a specific status of the resource's lifecycle.
        #
        #   @param filter_type [Symbol, Telnyx::Models::SimCardGroups::ActionListParams::FilterType] Filter by action type.
        #
        #   @param page_number [Integer] The page number to load.
        #
        #   @param page_size [Integer] The size of the page.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Filter by a specific status of the resource's lifecycle.
        module FilterStatus
          extend Telnyx::Internal::Type::Enum

          IN_PROGRESS = :"in-progress"
          COMPLETED = :completed
          FAILED = :failed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Filter by action type.
        module FilterType
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
  end
end
