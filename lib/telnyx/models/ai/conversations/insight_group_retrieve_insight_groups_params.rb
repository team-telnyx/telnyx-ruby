# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Conversations
        # @see Telnyx::Resources::AI::Conversations::InsightGroups#retrieve_insight_groups
        class InsightGroupRetrieveInsightGroupsParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute page
          #   Consolidated page parameter (deepObject style). Originally: page[number],
          #   page[size]
          #
          #   @return [Telnyx::Models::AI::Conversations::InsightGroupRetrieveInsightGroupsParams::Page, nil]
          optional :page, -> { Telnyx::AI::Conversations::InsightGroupRetrieveInsightGroupsParams::Page }

          # @!method initialize(page: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Conversations::InsightGroupRetrieveInsightGroupsParams} for
          #   more details.
          #
          #   @param page [Telnyx::Models::AI::Conversations::InsightGroupRetrieveInsightGroupsParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          class Page < Telnyx::Internal::Type::BaseModel
            # @!attribute number
            #   Page number (0-based)
            #
            #   @return [Integer, nil]
            optional :number, Integer

            # @!attribute size
            #   Number of items per page
            #
            #   @return [Integer, nil]
            optional :size, Integer

            # @!method initialize(number: nil, size: nil)
            #   Consolidated page parameter (deepObject style). Originally: page[number],
            #   page[size]
            #
            #   @param number [Integer] Page number (0-based)
            #
            #   @param size [Integer] Number of items per page
          end
        end
      end
    end
  end
end
