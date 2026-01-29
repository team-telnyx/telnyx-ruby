# frozen_string_literal: true

module Telnyx
  module Models
    module SimCards
      # @see Telnyx::Resources::SimCards::Actions#list
      class ActionListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Consolidated filter parameter for SIM card actions (deepObject style).
        #   Originally: filter[sim_card_id], filter[status],
        #   filter[bulk_sim_card_action_id], filter[action_type]
        #
        #   @return [Telnyx::Models::SimCards::ActionListParams::Filter, nil]
        optional :filter, -> { Telnyx::SimCards::ActionListParams::Filter }

        # @!attribute page_number
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!method initialize(filter: nil, page_number: nil, page_size: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SimCards::ActionListParams} for more details.
        #
        #   @param filter [Telnyx::Models::SimCards::ActionListParams::Filter] Consolidated filter parameter for SIM card actions (deepObject style). Originall
        #
        #   @param page_number [Integer]
        #
        #   @param page_size [Integer]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute action_type
          #   Filter by action type.
          #
          #   @return [Symbol, Telnyx::Models::SimCards::ActionListParams::Filter::ActionType, nil]
          optional :action_type, enum: -> { Telnyx::SimCards::ActionListParams::Filter::ActionType }

          # @!attribute bulk_sim_card_action_id
          #   Filter by a bulk SIM card action ID.
          #
          #   @return [String, nil]
          optional :bulk_sim_card_action_id, String

          # @!attribute sim_card_id
          #   A valid SIM card ID.
          #
          #   @return [String, nil]
          optional :sim_card_id, String

          # @!attribute status
          #   Filter by a specific status of the resource's lifecycle.
          #
          #   @return [Symbol, Telnyx::Models::SimCards::ActionListParams::Filter::Status, nil]
          optional :status, enum: -> { Telnyx::SimCards::ActionListParams::Filter::Status }

          # @!method initialize(action_type: nil, bulk_sim_card_action_id: nil, sim_card_id: nil, status: nil)
          #   Consolidated filter parameter for SIM card actions (deepObject style).
          #   Originally: filter[sim_card_id], filter[status],
          #   filter[bulk_sim_card_action_id], filter[action_type]
          #
          #   @param action_type [Symbol, Telnyx::Models::SimCards::ActionListParams::Filter::ActionType] Filter by action type.
          #
          #   @param bulk_sim_card_action_id [String] Filter by a bulk SIM card action ID.
          #
          #   @param sim_card_id [String] A valid SIM card ID.
          #
          #   @param status [Symbol, Telnyx::Models::SimCards::ActionListParams::Filter::Status] Filter by a specific status of the resource's lifecycle.

          # Filter by action type.
          #
          # @see Telnyx::Models::SimCards::ActionListParams::Filter#action_type
          module ActionType
            extend Telnyx::Internal::Type::Enum

            ENABLE = :enable
            ENABLE_STANDBY_SIM_CARD = :enable_standby_sim_card
            DISABLE = :disable
            SET_STANDBY = :set_standby
            REMOVE_PUBLIC_IP = :remove_public_ip
            SET_PUBLIC_IP = :set_public_ip

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Filter by a specific status of the resource's lifecycle.
          #
          # @see Telnyx::Models::SimCards::ActionListParams::Filter#status
          module Status
            extend Telnyx::Internal::Type::Enum

            IN_PROGRESS = :"in-progress"
            COMPLETED = :completed
            FAILED = :failed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
