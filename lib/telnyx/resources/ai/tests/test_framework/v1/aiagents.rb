# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Tests
        class TestFramework
          class V1
            # Test agents, evaluator scenarios, metrics, and run results for the AI test
            # framework.
            class Aiagents
              # Creates a test agent in your organization. The agent wraps a Telnyx AI assistant
              # so simulated callers can be sent against it.
              #
              # @overload create(agent_name:, assistant_id:, auto_fetch_calls_enabled: nil, auto_sync_prompt_enabled: nil, auto_update_dropoff_nodes: nil, auto_update_topic_nodes: nil, contact_number: nil, description: nil, inbound: nil, language: nil, llm_max_tokens: nil, llm_model: nil, llm_system_prompt: nil, llm_temperature: nil, outbound_auto_call: nil, sip_endpoint: nil, request_options: {})
              #
              # @param agent_name [String] Name of the test agent.
              #
              # @param assistant_id [String] ID of the Telnyx AI assistant under test.
              #
              # @param auto_fetch_calls_enabled [Boolean]
              #
              # @param auto_sync_prompt_enabled [Boolean]
              #
              # @param auto_update_dropoff_nodes [Boolean]
              #
              # @param auto_update_topic_nodes [Boolean]
              #
              # @param contact_number [String]
              #
              # @param description [String]
              #
              # @param inbound [Boolean]
              #
              # @param language [String] ISO language code the test agent converses in.
              #
              # @param llm_max_tokens [Integer]
              #
              # @param llm_model [String]
              #
              # @param llm_system_prompt [String]
              #
              # @param llm_temperature [Float]
              #
              # @param outbound_auto_call [Boolean]
              #
              # @param sip_endpoint [String]
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::TestFramework::V1::TestAgent]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::AiagentCreateParams
              def create(params)
                parsed, options = Telnyx::AI::Tests::TestFramework::V1::AiagentCreateParams.dump_request(params)
                @client.request(
                  method: :post,
                  path: "ai/tests/test_framework/v1/aiagents",
                  body: parsed,
                  model: Telnyx::AI::Tests::TestFramework::V1::TestAgent,
                  options: options
                )
              end

              # Returns the specified test agent.
              #
              # @overload retrieve(id, request_options: {})
              #
              # @param id [Integer] Numeric ID of the test agent.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::TestFramework::V1::TestAgent]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::AiagentRetrieveParams
              def retrieve(id, params = {})
                @client.request(
                  method: :get,
                  path: ["ai/tests/test_framework/v1/aiagents/%1$s", id],
                  model: Telnyx::AI::Tests::TestFramework::V1::TestAgent,
                  options: params[:request_options]
                )
              end

              # Updates the specified test agent.
              #
              # @overload update(id, agent_name: nil, assistant_id: nil, auto_fetch_calls_enabled: nil, auto_sync_prompt_enabled: nil, auto_update_dropoff_nodes: nil, auto_update_topic_nodes: nil, contact_number: nil, description: nil, inbound: nil, language: nil, llm_max_tokens: nil, llm_model: nil, llm_system_prompt: nil, llm_temperature: nil, outbound_auto_call: nil, sip_endpoint: nil, request_options: {})
              #
              # @param id [Integer] Numeric ID of the test agent.
              #
              # @param agent_name [String] Name of the test agent.
              #
              # @param assistant_id [String] ID of the Telnyx AI assistant under test.
              #
              # @param auto_fetch_calls_enabled [Boolean]
              #
              # @param auto_sync_prompt_enabled [Boolean]
              #
              # @param auto_update_dropoff_nodes [Boolean]
              #
              # @param auto_update_topic_nodes [Boolean]
              #
              # @param contact_number [String]
              #
              # @param description [String]
              #
              # @param inbound [Boolean]
              #
              # @param language [String] ISO language code the test agent converses in.
              #
              # @param llm_max_tokens [Integer]
              #
              # @param llm_model [String]
              #
              # @param llm_system_prompt [String]
              #
              # @param llm_temperature [Float]
              #
              # @param outbound_auto_call [Boolean]
              #
              # @param sip_endpoint [String]
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::TestFramework::V1::TestAgent]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::AiagentUpdateParams
              def update(id, params = {})
                parsed, options = Telnyx::AI::Tests::TestFramework::V1::AiagentUpdateParams.dump_request(params)
                @client.request(
                  method: :put,
                  path: ["ai/tests/test_framework/v1/aiagents/%1$s", id],
                  body: parsed,
                  model: Telnyx::AI::Tests::TestFramework::V1::TestAgent,
                  options: options
                )
              end

              # Returns a paginated list of test agents in your organization. A test agent wraps
              # the Telnyx AI assistant under test and drives simulated callers against it.
              #
              # @overload list(page: nil, page_size: nil, request_options: {})
              #
              # @param page [Integer] Page number (1-based).
              #
              # @param page_size [Integer] Number of results per page.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::TestFramework::V1::AiagentListResponse]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::AiagentListParams
              def list(params = {})
                parsed, options = Telnyx::AI::Tests::TestFramework::V1::AiagentListParams.dump_request(params)
                query = Telnyx::Internal::Util.encode_query_params(parsed)
                @client.request(
                  method: :get,
                  path: "ai/tests/test_framework/v1/aiagents",
                  query: query,
                  model: Telnyx::Models::AI::Tests::TestFramework::V1::AiagentListResponse,
                  options: options
                )
              end

              # Deletes the specified test agent.
              #
              # @overload delete(id, request_options: {})
              #
              # @param id [Integer] Numeric ID of the test agent.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Object]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::AiagentDeleteParams
              def delete(id, params = {})
                @client.request(
                  method: :delete,
                  path: ["ai/tests/test_framework/v1/aiagents/%1$s", id],
                  model: Telnyx::Internal::Type::Unknown,
                  options: params[:request_options]
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
