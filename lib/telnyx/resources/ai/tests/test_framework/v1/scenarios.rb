# frozen_string_literal: true

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
              #
              # @overload create(name:, personality:, agent: nil, expected_outcome_prompt: nil, first_message: nil, folder_path: nil, instructions: nil, metrics: nil, tags: nil, test_profile: nil, request_options: {})
              #
              # @param name [String]
              #
              # @param personality [Integer] ID of the personality the caller simulates.
              #
              # @param agent [Integer, nil]
              #
              # @param expected_outcome_prompt [String]
              #
              # @param first_message [String]
              #
              # @param folder_path [String, nil]
              #
              # @param instructions [String]
              #
              # @param metrics [Array<Integer>]
              #
              # @param tags [Array<String>]
              #
              # @param test_profile [Integer]
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioCreateParams
              def create(params)
                parsed, options = Telnyx::AI::Tests::TestFramework::V1::ScenarioCreateParams.dump_request(params)
                @client.request(
                  method: :post,
                  path: "ai/tests/test_framework/v1/scenarios",
                  body: parsed,
                  model: Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail,
                  options: options
                )
              end

              # Returns the specified evaluator scenario with full detail.
              #
              # @overload retrieve(id, request_options: {})
              #
              # @param id [Integer] Numeric ID of the evaluator scenario.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveParams
              def retrieve(id, params = {})
                @client.request(
                  method: :get,
                  path: ["ai/tests/test_framework/v1/scenarios/%1$s", id],
                  model: Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail,
                  options: params[:request_options]
                )
              end

              # Updates the specified evaluator scenario.
              #
              # @overload update(id, agent: nil, expected_outcome_prompt: nil, first_message: nil, folder_path: nil, inbound_phone_number: nil, instructions: nil, max_duration: nil, metrics: nil, name: nil, personality: nil, phone_number: nil, scenario_language: nil, tags: nil, test_profile: nil, tool_ids: nil, request_options: {})
              #
              # @param id [Integer] Numeric ID of the evaluator scenario.
              #
              # @param agent [Integer, nil]
              #
              # @param expected_outcome_prompt [String]
              #
              # @param first_message [String]
              #
              # @param folder_path [String, nil]
              #
              # @param inbound_phone_number [Integer]
              #
              # @param instructions [String]
              #
              # @param max_duration [Integer, nil]
              #
              # @param metrics [Array<Integer>]
              #
              # @param name [String]
              #
              # @param personality [Integer]
              #
              # @param phone_number [Integer]
              #
              # @param scenario_language [String]
              #
              # @param tags [Array<String>]
              #
              # @param test_profile [Integer]
              #
              # @param tool_ids [Array<String>]
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioUpdateParams
              def update(id, params = {})
                parsed, options = Telnyx::AI::Tests::TestFramework::V1::ScenarioUpdateParams.dump_request(params)
                @client.request(
                  method: :patch,
                  path: ["ai/tests/test_framework/v1/scenarios/%1$s", id],
                  body: parsed,
                  model: Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail,
                  options: options
                )
              end

              # Returns a paginated list of evaluator scenarios in your organization, optionally
              # filtered by test agent or tags.
              #
              # @overload list(agent_id: nil, assistant_id: nil, page: nil, page_size: nil, tags: nil, request_options: {})
              #
              # @param agent_id [Integer] Filter scenarios belonging to the specified test agent.
              #
              # @param assistant_id [String] Filter scenarios belonging to the specified Telnyx assistant.
              #
              # @param page [Integer] Page number (1-based).
              #
              # @param page_size [Integer] Number of results per page.
              #
              # @param tags [String] Filter scenarios by a comma-separated list of tags.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListParams
              def list(params = {})
                parsed, options = Telnyx::AI::Tests::TestFramework::V1::ScenarioListParams.dump_request(params)
                query = Telnyx::Internal::Util.encode_query_params(parsed)
                @client.request(
                  method: :get,
                  path: "ai/tests/test_framework/v1/scenarios",
                  query: query,
                  model: Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse,
                  options: options
                )
              end

              # Deletes the specified evaluator scenario.
              #
              # @overload delete(id, request_options: {})
              #
              # @param id [Integer] Numeric ID of the evaluator scenario.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Object]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioDeleteParams
              def delete(id, params = {})
                @client.request(
                  method: :delete,
                  path: ["ai/tests/test_framework/v1/scenarios/%1$s", id],
                  model: Telnyx::Internal::Type::Unknown,
                  options: params[:request_options]
                )
              end

              # Starts background generation of evaluator scenarios for a test agent. Returns a
              # progress ID to poll with the generate-scenarios-progress endpoint.
              #
              # @overload generate_bg(num_scenarios:, agent_id: nil, extra_instructions: nil, first_message: nil, folder_path: nil, generate_expected_outcomes: nil, inbound_phone_number: nil, personalities: nil, scenario_type: nil, tags: nil, test_profile: nil, tool_ids: nil, request_options: {})
              #
              # @param num_scenarios [Integer] How many scenarios to generate.
              #
              # @param agent_id [Integer]
              #
              # @param extra_instructions [String] Optional guidance steering scenario generation.
              #
              # @param first_message [String]
              #
              # @param folder_path [String, nil]
              #
              # @param generate_expected_outcomes [Boolean] Whether to generate expected-outcome prompts for the scenarios.
              #
              # @param inbound_phone_number [Integer, nil]
              #
              # @param personalities [Array<Integer>]
              #
              # @param scenario_type [Symbol, Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioGenerateBgParams::ScenarioType] Type of scenario to generate.
              #
              # @param tags [Array<String>]
              #
              # @param test_profile [Integer]
              #
              # @param tool_ids [Array<String>]
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioGenerationResponse]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioGenerateBgParams
              def generate_bg(params)
                parsed, options = Telnyx::AI::Tests::TestFramework::V1::ScenarioGenerateBgParams.dump_request(params)
                @client.request(
                  method: :post,
                  path: "ai/tests/test_framework/v1/scenarios/generate-bg",
                  body: parsed,
                  model: Telnyx::AI::Tests::TestFramework::V1::ScenarioGenerationResponse,
                  options: options
                )
              end

              # Exports the selected evaluator scenarios as a CSV or XLSX file download.
              #
              # @overload retrieve_export_scenarios(export_type:, scenario_ids:, agent_id: nil, request_options: {})
              #
              # @param export_type [Symbol, Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveExportScenariosParams::ExportType] File format of the export.
              #
              # @param scenario_ids [String] Comma-separated scenario IDs to export.
              #
              # @param agent_id [Integer] Export scenarios belonging to the specified test agent.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [StringIO]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveExportScenariosParams
              def retrieve_export_scenarios(params)
                parsed, options =
                  Telnyx::AI::Tests::TestFramework::V1::ScenarioRetrieveExportScenariosParams.dump_request(params)
                query = Telnyx::Internal::Util.encode_query_params(parsed)
                @client.request(
                  method: :get,
                  path: "ai/tests/test_framework/v1/scenarios/export_scenarios",
                  query: query,
                  headers: {"accept" => "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"},
                  model: StringIO,
                  options: options
                )
              end

              # Returns the status of a background scenario-generation job started with the
              # generate-evaluator-scenarios endpoint.
              #
              # @overload retrieve_generate_progress(progress_id:, request_options: {})
              #
              # @param progress_id [String] Progress ID returned by the generate-evaluator-scenarios endpoint.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveGenerateProgressResponse]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveGenerateProgressParams
              def retrieve_generate_progress(params)
                parsed, options =
                  Telnyx::AI::Tests::TestFramework::V1::ScenarioRetrieveGenerateProgressParams.dump_request(params)
                query = Telnyx::Internal::Util.encode_query_params(parsed)
                @client.request(
                  method: :get,
                  path: "ai/tests/test_framework/v1/scenarios/generate-progress",
                  query: query,
                  model: Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveGenerateProgressResponse,
                  options: options
                )
              end

              # Returns the status of an improve-scenarios session started with the
              # improve-evaluator-scenarios endpoint.
              #
              # @overload retrieve_scenario_agent_progress(progress_id:, request_options: {})
              #
              # @param progress_id [String] Progress ID returned by the improve-evaluator-scenarios endpoint.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressParams
              def retrieve_scenario_agent_progress(params)
                parsed, options =
                  Telnyx::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressParams.dump_request(params)
                query = Telnyx::Internal::Util.encode_query_params(parsed)
                @client.request(
                  method: :get,
                  path: "ai/tests/test_framework/v1/scenarios/scenario-agent-progress",
                  query: query,
                  model: Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse,
                  options: options
                )
              end

              # Runs the selected evaluator scenarios against their test agents and creates a
              # run batch. Returns the ID of the created batch, whose results can be listed with
              # the test-run-results endpoints.
              #
              # @overload run_scenarios(agent_id: nil, agent_number: nil, assistant_id: nil, concurrency_limit: nil, frequency: nil, mode: nil, name: nil, outbound_phone_number: nil, personality_ids: nil, scenarios: nil, tags: nil, test_profile_ids: nil, request_options: {})
              #
              # @param agent_id [Integer]
              #
              # @param agent_number [String]
              #
              # @param assistant_id [String]
              #
              # @param concurrency_limit [Integer] Maximum number of concurrent simulated calls.
              #
              # @param frequency [Integer]
              #
              # @param mode [Symbol, Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams::Mode]
              #
              # @param name [String]
              #
              # @param outbound_phone_number [String]
              #
              # @param personality_ids [Array<Integer>]
              #
              # @param scenarios [Array<Object>, String] Scenario IDs to run, or the literal string 'all'.
              #
              # @param tags [Array<String>]
              #
              # @param test_profile_ids [Array<Integer>]
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRunScenariosResponse]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams
              def run_scenarios(params = {})
                parsed, options = Telnyx::AI::Tests::TestFramework::V1::ScenarioRunScenariosParams.dump_request(params)
                @client.request(
                  method: :post,
                  path: "ai/tests/test_framework/v1/scenarios/run_scenarios",
                  body: parsed,
                  model: Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRunScenariosResponse,
                  options: options
                )
              end

              # Starts an interactive session that improves selected evaluator scenarios from a
              # natural-language instruction. Returns a progress ID to poll with the
              # improve-scenarios-progress endpoint.
              #
              # @overload scenario_agent(scenarios:, user_message:, agent_id: nil, agent_resolution_response: nil, apply_changes: nil, context: nil, knowledge_base: nil, num_scenarios: nil, pending_tool_calls: nil, scenarios_needing_agent: nil, session_id: nil, updated_scenarios: nil, request_options: {})
              #
              # @param scenarios [Array<Object>, String] Scenario IDs to improve, or the literal string 'all'.
              #
              # @param user_message [String] What the assistant should improve about the selected scenarios.
              #
              # @param agent_id [Integer, nil]
              #
              # @param agent_resolution_response [String]
              #
              # @param apply_changes [Boolean]
              #
              # @param context [Array<Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioScenarioAgentParams::Context>, nil]
              #
              # @param knowledge_base [Array<Integer>]
              #
              # @param num_scenarios [Integer]
              #
              # @param pending_tool_calls [Array<Hash{Symbol=>Object}>, nil]
              #
              # @param scenarios_needing_agent [Array<Integer>]
              #
              # @param session_id [Integer, nil]
              #
              # @param updated_scenarios [Array<Hash{Symbol=>Object}>]
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioScenarioAgentResponse]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioScenarioAgentParams
              def scenario_agent(params)
                parsed, options = Telnyx::AI::Tests::TestFramework::V1::ScenarioScenarioAgentParams.dump_request(params)
                @client.request(
                  method: :post,
                  path: "ai/tests/test_framework/v1/scenarios/scenario-agent",
                  body: parsed,
                  model: Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioScenarioAgentResponse,
                  options: options
                )
              end

              # @api private
              #
              # @param client [Telnyx::Client]
              def initialize(client:)
                @client = client
              end
            end
          end
        end
      end
    end
  end
end
