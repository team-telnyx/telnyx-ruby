# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Scenarios#create
            class EvaluatorScenarioDetail < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [Integer]
              required :id, Integer

              # @!attribute agent
              #
              #   @return [Integer, nil]
              required :agent, Integer, nil?: true

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!attribute dynamic_variable_values
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :dynamic_variable_values, Telnyx::Internal::Type::HashOf[String], nil?: true

              # @!attribute expected_outcome_prompt
              #
              #   @return [String, nil]
              optional :expected_outcome_prompt, String

              # @!attribute first_message
              #
              #   @return [String, nil]
              optional :first_message, String

              # @!attribute folder_path
              #
              #   @return [String, nil]
              optional :folder_path, String, nil?: true

              # @!attribute inbound_phone_number
              #
              #   @return [Integer, nil]
              optional :inbound_phone_number, Integer, nil?: true

              # @!attribute inbound_phone_number_data
              #
              #   @return [Telnyx::Models::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::InboundPhoneNumberData, nil]
              optional :inbound_phone_number_data,
                       -> {
                         Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::InboundPhoneNumberData
                       },
                       nil?: true

              # @!attribute information_fields
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :information_fields, Telnyx::Internal::Type::HashOf[String], nil?: true

              # @!attribute instructions
              #
              #   @return [String, nil]
              optional :instructions, String

              # @!attribute is_predefined
              #
              #   @return [Boolean, nil]
              optional :is_predefined, Telnyx::Internal::Type::Boolean

              # @!attribute max_duration
              #
              #   @return [Integer, nil]
              optional :max_duration, Integer, nil?: true

              # @!attribute metric_names
              #
              #   @return [Array<String>, nil]
              optional :metric_names, Telnyx::Internal::Type::ArrayOf[String]

              # @!attribute metrics
              #
              #   @return [Array<Integer>, nil]
              optional :metrics, Telnyx::Internal::Type::ArrayOf[Integer]

              # @!attribute outbound_phone_number_data
              #
              #   @return [Telnyx::Models::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::OutboundPhoneNumberData, nil]
              optional :outbound_phone_number_data,
                       -> {
                         Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::OutboundPhoneNumberData
                       },
                       nil?: true

              # @!attribute personality
              #
              #   @return [Integer, nil]
              optional :personality, Integer, nil?: true

              # @!attribute personality_name
              #
              #   @return [String, nil]
              optional :personality_name, String

              # @!attribute phone_number
              #
              #   @return [String, nil]
              optional :phone_number, String

              # @!attribute project
              #
              #   @return [Integer, nil]
              optional :project, Integer, nil?: true

              # @!attribute runs
              #
              #   @return [Array<Integer>, nil]
              optional :runs, Telnyx::Internal::Type::ArrayOf[Integer]

              # @!attribute scenario_language
              #
              #   @return [String, nil]
              optional :scenario_language, String, nil?: true

              # @!attribute scenario_type
              #
              #   @return [String, nil]
              optional :scenario_type, String

              # @!attribute simulation_description
              #
              #   @return [String, nil]
              optional :simulation_description, String

              # @!attribute suite_type
              #
              #   @return [String, nil]
              optional :suite_type, String

              # @!attribute tags
              #
              #   @return [Array<String>, nil]
              optional :tags, Telnyx::Internal::Type::ArrayOf[String]

              # @!attribute test_profile
              #
              #   @return [Integer, nil]
              optional :test_profile, Integer, nil?: true

              # @!attribute test_profile_data
              #
              #   @return [Telnyx::Models::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::TestProfileData, nil]
              optional :test_profile_data,
                       -> { Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::TestProfileData },
                       nil?: true

              # @!attribute tool_ids
              #
              #   @return [Array<String>, nil]
              optional :tool_ids, Telnyx::Internal::Type::ArrayOf[String]

              # @!method initialize(id:, agent:, name:, dynamic_variable_values: nil, expected_outcome_prompt: nil, first_message: nil, folder_path: nil, inbound_phone_number: nil, inbound_phone_number_data: nil, information_fields: nil, instructions: nil, is_predefined: nil, max_duration: nil, metric_names: nil, metrics: nil, outbound_phone_number_data: nil, personality: nil, personality_name: nil, phone_number: nil, project: nil, runs: nil, scenario_language: nil, scenario_type: nil, simulation_description: nil, suite_type: nil, tags: nil, test_profile: nil, test_profile_data: nil, tool_ids: nil)
              #   @param id [Integer]
              #   @param agent [Integer, nil]
              #   @param name [String]
              #   @param dynamic_variable_values [Hash{Symbol=>String}, nil]
              #   @param expected_outcome_prompt [String]
              #   @param first_message [String]
              #   @param folder_path [String, nil]
              #   @param inbound_phone_number [Integer, nil]
              #   @param inbound_phone_number_data [Telnyx::Models::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::InboundPhoneNumberData, nil]
              #   @param information_fields [Hash{Symbol=>String}, nil]
              #   @param instructions [String]
              #   @param is_predefined [Boolean]
              #   @param max_duration [Integer, nil]
              #   @param metric_names [Array<String>]
              #   @param metrics [Array<Integer>]
              #   @param outbound_phone_number_data [Telnyx::Models::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::OutboundPhoneNumberData, nil]
              #   @param personality [Integer, nil]
              #   @param personality_name [String]
              #   @param phone_number [String]
              #   @param project [Integer, nil]
              #   @param runs [Array<Integer>]
              #   @param scenario_language [String, nil]
              #   @param scenario_type [String]
              #   @param simulation_description [String]
              #   @param suite_type [String]
              #   @param tags [Array<String>]
              #   @param test_profile [Integer, nil]
              #   @param test_profile_data [Telnyx::Models::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::TestProfileData, nil]
              #   @param tool_ids [Array<String>]

              # @see Telnyx::Models::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail#inbound_phone_number_data
              class InboundPhoneNumberData < Telnyx::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer, nil]
                optional :id, Integer

                # @!attribute number
                #
                #   @return [String, nil]
                optional :number, String

                # @!attribute phone_number_id
                #
                #   @return [String, nil]
                optional :phone_number_id, String

                # @!method initialize(id: nil, number: nil, phone_number_id: nil)
                #   @param id [Integer]
                #   @param number [String]
                #   @param phone_number_id [String]
              end

              # @see Telnyx::Models::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail#outbound_phone_number_data
              class OutboundPhoneNumberData < Telnyx::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer, nil]
                optional :id, Integer

                # @!attribute number
                #
                #   @return [String, nil]
                optional :number, String

                # @!attribute phone_number_id
                #
                #   @return [String, nil]
                optional :phone_number_id, String

                # @!method initialize(id: nil, number: nil, phone_number_id: nil)
                #   @param id [Integer]
                #   @param number [String]
                #   @param phone_number_id [String]
              end

              # @see Telnyx::Models::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail#test_profile_data
              class TestProfileData < Telnyx::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer, nil]
                optional :id, Integer

                # @!attribute agent
                #
                #   @return [Integer, nil]
                optional :agent, Integer, nil?: true

                # @!attribute information
                #
                #   @return [Hash{Symbol=>String}, nil]
                optional :information, Telnyx::Internal::Type::HashOf[String], nil?: true

                # @!attribute name
                #
                #   @return [String, nil]
                optional :name, String

                # @!attribute project
                #
                #   @return [Integer, nil]
                optional :project, Integer, nil?: true

                # @!method initialize(id: nil, agent: nil, information: nil, name: nil, project: nil)
                #   @param id [Integer]
                #   @param agent [Integer, nil]
                #   @param information [Hash{Symbol=>String}, nil]
                #   @param name [String]
                #   @param project [Integer, nil]
              end
            end
          end
        end
      end
    end
  end
end
