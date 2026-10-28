# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Scenarios#scenario_agent
            class ScenarioScenarioAgentParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              # @!attribute scenarios
              #   Scenario IDs to improve, or the literal string 'all'.
              #
              #   @return [Array<Object>, String]
              required :scenarios,
                       union: -> { Telnyx::AI::Tests::TestFramework::V1::ScenarioScenarioAgentParams::Scenarios }

              # @!attribute user_message
              #   What the assistant should improve about the selected scenarios.
              #
              #   @return [String]
              required :user_message, String

              # @!attribute agent_id
              #
              #   @return [Integer, nil]
              optional :agent_id, Integer, nil?: true

              # @!attribute agent_resolution_response
              #
              #   @return [String, nil]
              optional :agent_resolution_response, String

              # @!attribute apply_changes
              #
              #   @return [Boolean, nil]
              optional :apply_changes, Telnyx::Internal::Type::Boolean

              # @!attribute context
              #
              #   @return [Array<Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioScenarioAgentParams::Context>, nil]
              optional :context,
                       -> {
                         Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Tests::TestFramework::V1::ScenarioScenarioAgentParams::Context]
                       },
                       nil?: true

              # @!attribute knowledge_base
              #
              #   @return [Array<Integer>, nil]
              optional :knowledge_base, Telnyx::Internal::Type::ArrayOf[Integer]

              # @!attribute num_scenarios
              #
              #   @return [Integer, nil]
              optional :num_scenarios, Integer

              # @!attribute pending_tool_calls
              #
              #   @return [Array<Hash{Symbol=>Object}>, nil]
              optional :pending_tool_calls,
                       Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]],
                       nil?: true

              # @!attribute scenarios_needing_agent
              #
              #   @return [Array<Integer>, nil]
              optional :scenarios_needing_agent, Telnyx::Internal::Type::ArrayOf[Integer]

              # @!attribute session_id
              #
              #   @return [Integer, nil]
              optional :session_id, Integer, nil?: true

              # @!attribute updated_scenarios
              #
              #   @return [Array<Hash{Symbol=>Object}>, nil]
              optional :updated_scenarios,
                       Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

              # @!method initialize(scenarios:, user_message:, agent_id: nil, agent_resolution_response: nil, apply_changes: nil, context: nil, knowledge_base: nil, num_scenarios: nil, pending_tool_calls: nil, scenarios_needing_agent: nil, session_id: nil, updated_scenarios: nil, request_options: {})
              #   @param scenarios [Array<Object>, String] Scenario IDs to improve, or the literal string 'all'.
              #
              #   @param user_message [String] What the assistant should improve about the selected scenarios.
              #
              #   @param agent_id [Integer, nil]
              #
              #   @param agent_resolution_response [String]
              #
              #   @param apply_changes [Boolean]
              #
              #   @param context [Array<Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioScenarioAgentParams::Context>, nil]
              #
              #   @param knowledge_base [Array<Integer>]
              #
              #   @param num_scenarios [Integer]
              #
              #   @param pending_tool_calls [Array<Hash{Symbol=>Object}>, nil]
              #
              #   @param scenarios_needing_agent [Array<Integer>]
              #
              #   @param session_id [Integer, nil]
              #
              #   @param updated_scenarios [Array<Hash{Symbol=>Object}>]
              #
              #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

              # Scenario IDs to improve, or the literal string 'all'.
              module Scenarios
                extend Telnyx::Internal::Type::Union

                # Scenario IDs to improve, or the literal string 'all'.
                variant -> { Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioScenarioAgentParams::Scenarios::UnionMember0Array }

                # Scenario IDs to improve, or the literal string 'all'.
                variant String

                # @!method self.variants
                #   @return [Array(Array<Object>, String)]

                # @type [Telnyx::Internal::Type::Converter]
                UnionMember0Array = Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]
              end

              class Context < Telnyx::Internal::Type::BaseModel
                # @!attribute content
                #
                #   @return [String, nil]
                optional :content, String

                # @!attribute role
                #
                #   @return [String, nil]
                optional :role, String

                # @!attribute timestamp
                #
                #   @return [String, nil]
                optional :timestamp, String

                # @!method initialize(content: nil, role: nil, timestamp: nil)
                #   @param content [String]
                #   @param role [String]
                #   @param timestamp [String]
              end
            end
          end
        end
      end
    end
  end
end
