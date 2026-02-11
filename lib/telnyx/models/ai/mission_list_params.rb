# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Missions#list
      class MissionListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute page_number
        #   Page number (1-based)
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   Number of items per page
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!method initialize(page_number: nil, page_size: nil, request_options: {})
        #   @param page_number [Integer] Page number (1-based)
        #
        #   @param page_size [Integer] Number of items per page
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
