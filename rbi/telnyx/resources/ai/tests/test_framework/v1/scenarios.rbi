# typed: strong

module Telnyx
  module Resources
    class AI
      class Tests
        class TestFramework
          class V1
            # Test agents, evaluator scenarios, metrics, and run results for the AI test
            # framework.
            class Scenarios
              # Creates an evaluator scenario in your organization.
              sig do
                params(
                  name: String,
                  personality: Integer,
                  agent: T.nilable(Integer),
                  expected_outcome_prompt: String,
                  first_message: String,
                  folder_path: T.nilable(String),
                  instructions: String,
                  metrics: T::Array[Integer],
                  tags: T::Array[String],
                  test_profile: Integer,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail
                )
              end
              def create(
                name:,
                # ID of the personality the caller simulates.
                personality:,
                agent: nil,
                expected_outcome_prompt: nil,
                first_message: nil,
                folder_path: nil,
                instructions: nil,
                metrics: nil,
                tags: nil,
                test_profile: nil,
                request_options: {}
              )
              end

              # Returns the specified evaluator scenario with full detail.
              sig do
                params(
                  id: Integer,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail
                )
              end
              def retrieve(
                # Numeric ID of the evaluator scenario.
                id,
                request_options: {}
              )
              end

              # Updates the specified evaluator scenario.
              sig do
                params(
                  id: Integer,
                  agent: T.nilable(Integer),
                  expected_outcome_prompt: String,
                  first_message: String,
                  folder_path: T.nilable(String),
                  inbound_phone_number: Integer,
                  instructions: String,
                  max_duration: T.nilable(Integer),
                  metrics: T::Array[Integer],
                  name: String,
                  personality: Integer,
                  phone_number: Integer,
                  scenario_language: String,
                  tags: T::Array[String],
                  test_profile: Integer,
                  tool_ids: T::Array[String],
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail
                )
              end
              def update(
                # Numeric ID of the evaluator scenario.
                id,
                agent: nil,
                expected_outcome_prompt: nil,
                first_message: nil,
                folder_path: nil,
                inbound_phone_number: nil,
                instructions: nil,
                max_duration: nil,
                metrics: nil,
                name: nil,
                personality: nil,
                phone_number: nil,
                scenario_language: nil,
                tags: nil,
                test_profile: nil,
                tool_ids: nil,
                request_options: {}
              )
              end

              # Returns a paginated list of evaluator scenarios in your organization, optionally
              # filtered by test agent or tags.
              sig do
                params(
                  agent_id: Integer,
                  assistant_id: String,
                  page: Integer,
                  page_size: Integer,
                  tags: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse
                )
              end
              def list(
                # Filter scenarios belonging to the specified test agent.
                agent_id: nil,
                # Filter scenarios belonging to the specified Telnyx assistant.
                assistant_id: nil,
                # Page number (1-based).
                page: nil,
                # Number of results per page.
                page_size: nil,
                # Filter scenarios by a comma-separated list of tags.
                tags: nil,
                request_options: {}
              )
              end

              # Deletes the specified evaluator scenario.
              sig do
                params(
                  id: Integer,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.anything)
              end
              def delete(
                # Numeric ID of the evaluator scenario.
                id,
                request_options: {}
              )
              end

              # Starts background generation of evaluator scenarios for a test agent. Returns a
              # progress ID to poll with the generate-scenarios-progress endpoint.
              sig do
                params(
                  num_scenarios: Integer,
                  agent_id: Integer,
                  extra_instructions: String,
                  first_message: String,
                  folder_path: T.nilable(String),
                  generate_expected_outcomes: T::Boolean,
                  inbound_phone_number: T.nilable(Integer),
                  personalities: T::Array[Integer],
                  scenario_type:
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioGenerateBgParams::ScenarioType::OrSymbol,
                  tags: T::Array[String],
                  test_profile: Integer,
                  tool_ids: T::Array[String],
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  Telnyx::AI::Tests::TestFramework::V1::ScenarioGenerationResponse
                )
              end
              def generate_bg(
                # How many scenarios to generate.
                num_scenarios:,
                agent_id: nil,
                # Optional guidance steering scenario generation.
                extra_instructions: nil,
                first_message: nil,
                folder_path: nil,
                # Whether to generate expected-outcome prompts for the scenarios.
                generate_expected_outcomes: nil,
                inbound_phone_number: nil,
                personalities: nil,
                # Type of scenario to generate.
                scenario_type: nil,
                tags: nil,
                test_profile: nil,
                tool_ids: nil,
                request_options: {}
              )
              end

              # Exports the selected evaluator scenarios as a CSV or XLSX file download.
              sig do
                params(
                  export_type:
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioRetrieveExportScenariosParams::ExportType::OrSymbol,
                  scenario_ids: String,
                  agent_id: Integer,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(StringIO)
              end
              def retrieve_export_scenarios(
                # File format of the export.
                export_type:,
                # Comma-separated scenario IDs to export.
                scenario_ids:,
                # Export scenarios belonging to the specified test agent.
                agent_id: nil,
                request_options: {}
              )
              end

              # Returns the status of a background scenario-generation job started with the
              # generate-evaluator-scenarios endpoint.
              sig do
                params(
                  progress_id: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveGenerateProgressResponse
                )
              end
              def retrieve_generate_progress(
                # Progress ID returned by the generate-evaluator-scenarios endpoint.
                progress_id:,
                request_options: {}
              )
              end

              # Returns the status of an improve-scenarios session started with the
              # improve-evaluator-scenarios endpoint.
              sig do
                params(
                  progress_id: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse
                )
              end
              def retrieve_scenario_agent_progress(
                # Progress ID returned by the improve-evaluator-scenarios endpoint.
                progress_id:,
                request_options: {}
              )
              end

              # Runs the selected evaluator scenarios against their test agents and creates a
              # run batch. Returns the ID of the created batch, whose results can be listed with
              # the test-run-results endpoints.
              sig do
                params(
                  agent_id: Integer,
                  agent_number: String,
                  assistant_id: String,
                  concurrency_limit: Integer,
                  frequency: Integer,
                  mode:
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams::Mode::OrSymbol,
                  name: String,
                  outbound_phone_number: String,
                  personality_ids: T::Array[Integer],
                  scenarios:
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams::Scenarios::Variants,
                  tags: T::Array[String],
                  test_profile_ids: T::Array[Integer],
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRunScenariosResponse
                )
              end
              def run_scenarios(
                agent_id: nil,
                agent_number: nil,
                assistant_id: nil,
                # Maximum number of concurrent simulated calls.
                concurrency_limit: nil,
                frequency: nil,
                mode: nil,
                name: nil,
                outbound_phone_number: nil,
                personality_ids: nil,
                # Scenario IDs to run, or the literal string 'all'.
                scenarios: nil,
                tags: nil,
                test_profile_ids: nil,
                request_options: {}
              )
              end

              # Starts an interactive session that improves selected evaluator scenarios from a
              # natural-language instruction. Returns a progress ID to poll with the
              # improve-scenarios-progress endpoint.
              sig do
                params(
                  scenarios:
                    Telnyx::AI::Tests::TestFramework::V1::ScenarioScenarioAgentParams::Scenarios::Variants,
                  user_message: String,
                  agent_id: T.nilable(Integer),
                  agent_resolution_response: String,
                  apply_changes: T::Boolean,
                  context:
                    T.nilable(
                      T::Array[
                        Telnyx::AI::Tests::TestFramework::V1::ScenarioScenarioAgentParams::Context::OrHash
                      ]
                    ),
                  knowledge_base: T::Array[Integer],
                  num_scenarios: Integer,
                  pending_tool_calls:
                    T.nilable(T::Array[T::Hash[Symbol, T.anything]]),
                  scenarios_needing_agent: T::Array[Integer],
                  session_id: T.nilable(Integer),
                  updated_scenarios: T::Array[T::Hash[Symbol, T.anything]],
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioScenarioAgentResponse
                )
              end
              def scenario_agent(
                # Scenario IDs to improve, or the literal string 'all'.
                scenarios:,
                # What the assistant should improve about the selected scenarios.
                user_message:,
                agent_id: nil,
                agent_resolution_response: nil,
                apply_changes: nil,
                context: nil,
                knowledge_base: nil,
                num_scenarios: nil,
                pending_tool_calls: nil,
                scenarios_needing_agent: nil,
                session_id: nil,
                updated_scenarios: nil,
                request_options: {}
              )
              end

              # @api private
              sig { params(client: Telnyx::Client).returns(T.attached_class) }
              def self.new(client:)
              end
            end
          end
        end
      end
    end
  end
end
