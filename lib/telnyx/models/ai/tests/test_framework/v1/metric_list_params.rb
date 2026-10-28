# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Metrics#list
            class MetricListParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              # @!attribute agent_id
              #   Filter metrics attached to the specified test agent.
              #
              #   @return [Integer, nil]
              optional :agent_id, Integer

              # @!attribute assistant_id
              #   Filter metrics attached to the specified Telnyx assistant.
              #
              #   @return [String, nil]
              optional :assistant_id, String

              # @!method initialize(agent_id: nil, assistant_id: nil, request_options: {})
              #   @param agent_id [Integer] Filter metrics attached to the specified test agent.
              #
              #   @param assistant_id [String] Filter metrics attached to the specified Telnyx assistant.
              #
              #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
            end
          end
        end
      end
    end
  end
end
