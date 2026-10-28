# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Scenarios#list
            class ScenarioListParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              # @!attribute agent_id
              #   Filter scenarios belonging to the specified test agent.
              #
              #   @return [Integer, nil]
              optional :agent_id, Integer

              # @!attribute assistant_id
              #   Filter scenarios belonging to the specified Telnyx assistant.
              #
              #   @return [String, nil]
              optional :assistant_id, String

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

              # @!attribute tags
              #   Filter scenarios by a comma-separated list of tags.
              #
              #   @return [String, nil]
              optional :tags, String

              # @!method initialize(agent_id: nil, assistant_id: nil, page: nil, page_size: nil, tags: nil, request_options: {})
              #   @param agent_id [Integer] Filter scenarios belonging to the specified test agent.
              #
              #   @param assistant_id [String] Filter scenarios belonging to the specified Telnyx assistant.
              #
              #   @param page [Integer] Page number (1-based).
              #
              #   @param page_size [Integer] Number of results per page.
              #
              #   @param tags [String] Filter scenarios by a comma-separated list of tags.
              #
              #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
            end
          end
        end
      end
    end
  end
end
