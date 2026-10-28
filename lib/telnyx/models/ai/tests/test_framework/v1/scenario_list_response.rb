# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Scenarios#list
            class ScenarioListResponse < Telnyx::Internal::Type::BaseModel
              # @!attribute count
              #
              #   @return [Integer]
              required :count, Integer

              # @!attribute next_
              #
              #   @return [String, nil]
              required :next_, String, api_name: :next, nil?: true

              # @!attribute previous
              #
              #   @return [String, nil]
              required :previous, String, nil?: true

              # @!attribute results
              #
              #   @return [Array<Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse::Result>]
              required :results,
                       -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse::Result] }

              # @!method initialize(count:, next_:, previous:, results:)
              #   @param count [Integer]
              #   @param next_ [String, nil]
              #   @param previous [String, nil]
              #   @param results [Array<Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse::Result>]

              class Result < Telnyx::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [Integer]
                required :id, Integer

                # @!attribute agent
                #   ID of the test agent the scenario runs against.
                #
                #   @return [Integer, nil]
                required :agent, Integer, nil?: true

                # @!attribute created_at
                #
                #   @return [Time]
                required :created_at, Time

                # @!attribute name
                #
                #   @return [String]
                required :name, String

                # @!attribute updated_at
                #
                #   @return [Time]
                required :updated_at, Time

                # @!attribute dynamic_variable_values
                #
                #   @return [Hash{Symbol=>String}, nil]
                optional :dynamic_variable_values, Telnyx::Internal::Type::HashOf[String], nil?: true

                # @!attribute expected_outcome_prompt
                #   What a successful conversation looks like; scored by the expected-outcome
                #   metric.
                #
                #   @return [String, nil]
                optional :expected_outcome_prompt, String

                # @!attribute first_message
                #   First message the simulated caller speaks or sends.
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
                #   @return [String, nil]
                optional :inbound_phone_number_data, String, nil?: true

                # @!attribute instructions
                #   What the simulated caller should do during the conversation.
                #
                #   @return [String, nil]
                optional :instructions, String

                # @!attribute last_updated_by
                #
                #   @return [Integer, nil]
                optional :last_updated_by, Integer, nil?: true

                # @!attribute metric_names
                #
                #   @return [Array<String>, nil]
                optional :metric_names, Telnyx::Internal::Type::ArrayOf[String]

                # @!attribute metrics
                #   Metric IDs applied to the scenario.
                #
                #   @return [Array<Integer>, nil]
                optional :metrics, Telnyx::Internal::Type::ArrayOf[Integer]

                # @!attribute personality
                #   ID of the test personality the caller simulates.
                #
                #   @return [Integer, nil]
                optional :personality, Integer, nil?: true

                # @!attribute personality_name
                #
                #   @return [String, nil]
                optional :personality_name, String

                # @!attribute phone_number
                #   Outbound phone number used to place the simulated call.
                #
                #   @return [String, nil]
                optional :phone_number, String

                # @!attribute scenario_language
                #
                #   @return [String, nil]
                optional :scenario_language, String, nil?: true

                # @!attribute scenario_type
                #   Type of scenario: workflow, red_teaming_voice, or red_teaming_text.
                #
                #   @return [String, nil]
                optional :scenario_type, String

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
                #   @return [Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse::Result::TestProfileData, nil]
                optional :test_profile_data,
                         -> { Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse::Result::TestProfileData },
                         nil?: true

                # @!attribute tool_ids
                #
                #   @return [Array<String>, nil]
                optional :tool_ids, Telnyx::Internal::Type::ArrayOf[String]

                # @!method initialize(id:, agent:, created_at:, name:, updated_at:, dynamic_variable_values: nil, expected_outcome_prompt: nil, first_message: nil, folder_path: nil, inbound_phone_number: nil, inbound_phone_number_data: nil, instructions: nil, last_updated_by: nil, metric_names: nil, metrics: nil, personality: nil, personality_name: nil, phone_number: nil, scenario_language: nil, scenario_type: nil, tags: nil, test_profile: nil, test_profile_data: nil, tool_ids: nil)
                #   Some parameter documentations has been truncated, see
                #   {Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse::Result} for
                #   more details.
                #
                #   @param id [Integer]
                #
                #   @param agent [Integer, nil] ID of the test agent the scenario runs against.
                #
                #   @param created_at [Time]
                #
                #   @param name [String]
                #
                #   @param updated_at [Time]
                #
                #   @param dynamic_variable_values [Hash{Symbol=>String}, nil]
                #
                #   @param expected_outcome_prompt [String] What a successful conversation looks like; scored by the expected-outcome metric
                #
                #   @param first_message [String] First message the simulated caller speaks or sends.
                #
                #   @param folder_path [String, nil]
                #
                #   @param inbound_phone_number [Integer, nil]
                #
                #   @param inbound_phone_number_data [String, nil]
                #
                #   @param instructions [String] What the simulated caller should do during the conversation.
                #
                #   @param last_updated_by [Integer, nil]
                #
                #   @param metric_names [Array<String>]
                #
                #   @param metrics [Array<Integer>] Metric IDs applied to the scenario.
                #
                #   @param personality [Integer, nil] ID of the test personality the caller simulates.
                #
                #   @param personality_name [String]
                #
                #   @param phone_number [String] Outbound phone number used to place the simulated call.
                #
                #   @param scenario_language [String, nil]
                #
                #   @param scenario_type [String] Type of scenario: workflow, red_teaming_voice, or red_teaming_text.
                #
                #   @param tags [Array<String>]
                #
                #   @param test_profile [Integer, nil]
                #
                #   @param test_profile_data [Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse::Result::TestProfileData, nil]
                #
                #   @param tool_ids [Array<String>]

                # @see Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse::Result#test_profile_data
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
end
