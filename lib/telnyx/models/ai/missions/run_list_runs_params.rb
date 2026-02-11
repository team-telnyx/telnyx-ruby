# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        # @see Telnyx::Resources::AI::Missions::Runs#list_runs
        class RunListRunsParams < Telnyx::Internal::Type::BaseModel
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

          # @!attribute status
          #
          #   @return [String, nil]
          optional :status, String

          # @!method initialize(page_number: nil, page_size: nil, status: nil, request_options: {})
          #   @param page_number [Integer] Page number (1-based)
          #
          #   @param page_size [Integer] Number of items per page
          #
          #   @param status [String]
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
