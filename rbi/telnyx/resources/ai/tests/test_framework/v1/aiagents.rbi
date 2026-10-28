# typed: strong

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
              sig do
                params(
                  agent_name: String,
                  assistant_id: String,
                  auto_fetch_calls_enabled: T::Boolean,
                  auto_sync_prompt_enabled: T::Boolean,
                  auto_update_dropoff_nodes: T::Boolean,
                  auto_update_topic_nodes: T::Boolean,
                  contact_number: String,
                  description: String,
                  inbound: T::Boolean,
                  language: String,
                  llm_max_tokens: Integer,
                  llm_model: String,
                  llm_system_prompt: String,
                  llm_temperature: Float,
                  outbound_auto_call: T::Boolean,
                  sip_endpoint: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(Telnyx::AI::Tests::TestFramework::V1::TestAgent)
              end
              def create(
                # Name of the test agent.
                agent_name:,
                # ID of the Telnyx AI assistant under test.
                assistant_id:,
                auto_fetch_calls_enabled: nil,
                auto_sync_prompt_enabled: nil,
                auto_update_dropoff_nodes: nil,
                auto_update_topic_nodes: nil,
                contact_number: nil,
                description: nil,
                inbound: nil,
                # ISO language code the test agent converses in.
                language: nil,
                llm_max_tokens: nil,
                llm_model: nil,
                llm_system_prompt: nil,
                llm_temperature: nil,
                outbound_auto_call: nil,
                sip_endpoint: nil,
                request_options: {}
              )
              end

              # Returns the specified test agent.
              sig do
                params(
                  id: Integer,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(Telnyx::AI::Tests::TestFramework::V1::TestAgent)
              end
              def retrieve(
                # Numeric ID of the test agent.
                id,
                request_options: {}
              )
              end

              # Updates the specified test agent.
              sig do
                params(
                  id: Integer,
                  agent_name: String,
                  assistant_id: String,
                  auto_fetch_calls_enabled: T::Boolean,
                  auto_sync_prompt_enabled: T::Boolean,
                  auto_update_dropoff_nodes: T::Boolean,
                  auto_update_topic_nodes: T::Boolean,
                  contact_number: String,
                  description: String,
                  inbound: T::Boolean,
                  language: String,
                  llm_max_tokens: Integer,
                  llm_model: String,
                  llm_system_prompt: String,
                  llm_temperature: Float,
                  outbound_auto_call: T::Boolean,
                  sip_endpoint: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(Telnyx::AI::Tests::TestFramework::V1::TestAgent)
              end
              def update(
                # Numeric ID of the test agent.
                id,
                # Name of the test agent.
                agent_name: nil,
                # ID of the Telnyx AI assistant under test.
                assistant_id: nil,
                auto_fetch_calls_enabled: nil,
                auto_sync_prompt_enabled: nil,
                auto_update_dropoff_nodes: nil,
                auto_update_topic_nodes: nil,
                contact_number: nil,
                description: nil,
                inbound: nil,
                # ISO language code the test agent converses in.
                language: nil,
                llm_max_tokens: nil,
                llm_model: nil,
                llm_system_prompt: nil,
                llm_temperature: nil,
                outbound_auto_call: nil,
                sip_endpoint: nil,
                request_options: {}
              )
              end

              # Returns a paginated list of test agents in your organization. A test agent wraps
              # the Telnyx AI assistant under test and drives simulated callers against it.
              sig do
                params(
                  page: Integer,
                  page_size: Integer,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  Telnyx::Models::AI::Tests::TestFramework::V1::AiagentListResponse
                )
              end
              def list(
                # Page number (1-based).
                page: nil,
                # Number of results per page.
                page_size: nil,
                request_options: {}
              )
              end

              # Deletes the specified test agent.
              sig do
                params(
                  id: Integer,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.anything)
              end
              def delete(
                # Numeric ID of the test agent.
                id,
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
