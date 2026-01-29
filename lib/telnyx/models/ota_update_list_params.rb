# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OtaUpdates#list
    class OtaUpdateListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter for OTA updates (deepObject style). Originally:
      #   filter[status], filter[sim_card_id], filter[type]
      #
      #   @return [Telnyx::Models::OtaUpdateListParams::Filter, nil]
      optional :filter, -> { Telnyx::OtaUpdateListParams::Filter }

      # @!attribute page
      #   Consolidated pagination parameter (deepObject style). Originally: page[number],
      #   page[size]
      #
      #   @return [Telnyx::Models::OtaUpdateListParams::Page, nil]
      optional :page, -> { Telnyx::OtaUpdateListParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::OtaUpdateListParams} for more details.
      #
      #   @param filter [Telnyx::Models::OtaUpdateListParams::Filter] Consolidated filter parameter for OTA updates (deepObject style). Originally: fi
      #
      #   @param page [Telnyx::Models::OtaUpdateListParams::Page] Consolidated pagination parameter (deepObject style). Originally: page[number],
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute sim_card_id
        #   The SIM card identification UUID.
        #
        #   @return [String, nil]
        optional :sim_card_id, String

        # @!attribute status
        #   Filter by a specific status of the resource's lifecycle.
        #
        #   @return [Symbol, Telnyx::Models::OtaUpdateListParams::Filter::Status, nil]
        optional :status, enum: -> { Telnyx::OtaUpdateListParams::Filter::Status }

        # @!attribute type
        #   Filter by type.
        #
        #   @return [Symbol, Telnyx::Models::OtaUpdateListParams::Filter::Type, nil]
        optional :type, enum: -> { Telnyx::OtaUpdateListParams::Filter::Type }

        # @!method initialize(sim_card_id: nil, status: nil, type: nil)
        #   Consolidated filter parameter for OTA updates (deepObject style). Originally:
        #   filter[status], filter[sim_card_id], filter[type]
        #
        #   @param sim_card_id [String] The SIM card identification UUID.
        #
        #   @param status [Symbol, Telnyx::Models::OtaUpdateListParams::Filter::Status] Filter by a specific status of the resource's lifecycle.
        #
        #   @param type [Symbol, Telnyx::Models::OtaUpdateListParams::Filter::Type] Filter by type.

        # Filter by a specific status of the resource's lifecycle.
        #
        # @see Telnyx::Models::OtaUpdateListParams::Filter#status
        module Status
          extend Telnyx::Internal::Type::Enum

          IN_PROGRESS = :"in-progress"
          COMPLETED = :completed
          FAILED = :failed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Filter by type.
        #
        # @see Telnyx::Models::OtaUpdateListParams::Filter#type
        module Type
          extend Telnyx::Internal::Type::Enum

          SIM_CARD_NETWORK_PREFERENCES = :sim_card_network_preferences

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #   The page number to load.
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   The size of the page.
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated pagination parameter (deepObject style). Originally: page[number],
        #   page[size]
        #
        #   @param number [Integer] The page number to load.
        #
        #   @param size [Integer] The size of the page.
      end
    end
  end
end
