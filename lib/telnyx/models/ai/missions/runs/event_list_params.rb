# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          # @see Telnyx::Resources::AI::Missions::Runs::Events#list
          class EventListParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute mission_id
            #
            #   @return [String]
            required :mission_id, String

            # @!attribute agent_id
            #
            #   @return [String, nil]
            optional :agent_id, String

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

            # @!attribute step_id
            #
            #   @return [String, nil]
            optional :step_id, String

            # @!attribute type
            #
            #   @return [String, nil]
            optional :type, String

            # @!method initialize(mission_id:, agent_id: nil, page_number: nil, page_size: nil, step_id: nil, type: nil, request_options: {})
            #   @param mission_id [String]
            #
            #   @param agent_id [String]
            #
            #   @param page_number [Integer] Page number (1-based)
            #
            #   @param page_size [Integer] Number of items per page
            #
            #   @param step_id [String]
            #
            #   @param type [String]
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
