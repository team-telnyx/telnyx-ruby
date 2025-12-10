# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Clusters#list
      class ClusterListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute page
        #   Consolidated page parameter (deepObject style). Originally: page[number],
        #   page[size]
        #
        #   @return [Telnyx::Models::AI::ClusterListParams::Page, nil]
        optional :page, -> { Telnyx::AI::ClusterListParams::Page }

        # @!method initialize(page: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::ClusterListParams} for more details.
        #
        #   @param page [Telnyx::Models::AI::ClusterListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Page < Telnyx::Internal::Type::BaseModel
          # @!attribute number
          #
          #   @return [Integer, nil]
          optional :number, Integer

          # @!attribute size
          #
          #   @return [Integer, nil]
          optional :size, Integer

          # @!method initialize(number: nil, size: nil)
          #   Consolidated page parameter (deepObject style). Originally: page[number],
          #   page[size]
          #
          #   @param number [Integer]
          #   @param size [Integer]
        end
      end
    end
  end
end
