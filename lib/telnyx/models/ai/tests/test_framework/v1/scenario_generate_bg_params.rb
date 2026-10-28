# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Scenarios#generate_bg
            class ScenarioGenerateBgParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              # @!attribute num_scenarios
              #   How many scenarios to generate.
              #
              #   @return [Integer]
              required :num_scenarios, Integer

              # @!attribute agent_id
              #
              #   @return [Integer, nil]
              optional :agent_id, Integer

              # @!attribute extra_instructions
              #   Optional guidance steering scenario generation.
              #
              #   @return [String, nil]
              optional :extra_instructions, String

              # @!attribute first_message
              #
              #   @return [String, nil]
              optional :first_message, String

              # @!attribute folder_path
              #
              #   @return [String, nil]
              optional :folder_path, String, nil?: true

              # @!attribute generate_expected_outcomes
              #   Whether to generate expected-outcome prompts for the scenarios.
              #
              #   @return [Boolean, nil]
              optional :generate_expected_outcomes, Telnyx::Internal::Type::Boolean

              # @!attribute inbound_phone_number
              #
              #   @return [Integer, nil]
              optional :inbound_phone_number, Integer, nil?: true

              # @!attribute personalities
              #
              #   @return [Array<Integer>, nil]
              optional :personalities, Telnyx::Internal::Type::ArrayOf[Integer]

              # @!attribute scenario_type
              #   Type of scenario to generate.
              #
              #   @return [Symbol, Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioGenerateBgParams::ScenarioType, nil]
              optional :scenario_type,
                       enum: -> { Telnyx::AI::Tests::TestFramework::V1::ScenarioGenerateBgParams::ScenarioType }

              # @!attribute tags
              #
              #   @return [Array<String>, nil]
              optional :tags, Telnyx::Internal::Type::ArrayOf[String]

              # @!attribute test_profile
              #
              #   @return [Integer, nil]
              optional :test_profile, Integer

              # @!attribute tool_ids
              #
              #   @return [Array<String>, nil]
              optional :tool_ids, Telnyx::Internal::Type::ArrayOf[String]

              # @!method initialize(num_scenarios:, agent_id: nil, extra_instructions: nil, first_message: nil, folder_path: nil, generate_expected_outcomes: nil, inbound_phone_number: nil, personalities: nil, scenario_type: nil, tags: nil, test_profile: nil, tool_ids: nil, request_options: {})
              #   @param num_scenarios [Integer] How many scenarios to generate.
              #
              #   @param agent_id [Integer]
              #
              #   @param extra_instructions [String] Optional guidance steering scenario generation.
              #
              #   @param first_message [String]
              #
              #   @param folder_path [String, nil]
              #
              #   @param generate_expected_outcomes [Boolean] Whether to generate expected-outcome prompts for the scenarios.
              #
              #   @param inbound_phone_number [Integer, nil]
              #
              #   @param personalities [Array<Integer>]
              #
              #   @param scenario_type [Symbol, Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioGenerateBgParams::ScenarioType] Type of scenario to generate.
              #
              #   @param tags [Array<String>]
              #
              #   @param test_profile [Integer]
              #
              #   @param tool_ids [Array<String>]
              #
              #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

              # Type of scenario to generate.
              module ScenarioType
                extend Telnyx::Internal::Type::Enum

                WORKFLOW = :workflow
                RED_TEAMING_VOICE = :red_teaming_voice
                RED_TEAMING_TEXT = :red_teaming_text

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end
      end
    end
  end
end
