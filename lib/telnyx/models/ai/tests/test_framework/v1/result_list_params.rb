# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Results#list
            class ResultListParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              # @!attribute agent_id
              #   Filter results belonging to the specified test agent.
              #
              #   @return [Integer, nil]
              optional :agent_id, Integer

              # @!attribute page
              #   Page number (1-based).
              #
              #   @return [Integer, nil]
              optional :page, Integer

              # @!attribute page_size
              #   Number of results per page.
              #
              #   @return [Integer, nil]
              optional :page_size, Integer

              # @!attribute scenarios
              #   Filter results by a comma-separated list of scenario IDs.
              #
              #   @return [String, nil]
              optional :scenarios, String

              # @!attribute search
              #   Filter results by a search string.
              #
              #   @return [String, nil]
              optional :search, String

              # @!method initialize(agent_id: nil, page: nil, page_size: nil, scenarios: nil, search: nil, request_options: {})
              #   @param agent_id [Integer] Filter results belonging to the specified test agent.
              #
              #   @param page [Integer] Page number (1-based).
              #
              #   @param page_size [Integer] Number of results per page.
              #
              #   @param scenarios [String] Filter results by a comma-separated list of scenario IDs.
              #
              #   @param search [String] Filter results by a search string.
              #
              #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
            end
          end
        end
      end
    end
  end
end
