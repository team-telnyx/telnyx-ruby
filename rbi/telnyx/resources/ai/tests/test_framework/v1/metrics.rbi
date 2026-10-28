# typed: strong

module Telnyx
  module Resources
    class AI
      class Tests
        class TestFramework
          class V1
            # Test agents, evaluator scenarios, metrics, and run results for the AI test
            # framework.
            class Metrics
              # Creates a metric in your organization.
              sig do
                params(
                  name: String,
                  add_to_new_agents: T.nilable(T::Boolean),
                  agents: T::Array[Integer],
                  assistant_id: String,
                  audio_enabled: T::Boolean,
                  description: String,
                  display_order: Integer,
                  enum_values: T::Array[String],
                  eval_type: String,
                  observability_enabled: T::Boolean,
                  prompt: String,
                  sampling_enabled: T::Boolean,
                  simulation_enabled: T::Boolean,
                  type: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(Telnyx::AI::Tests::TestFramework::V1::AITestMetric)
              end
              def create(
                name:,
                add_to_new_agents: nil,
                agents: nil,
                assistant_id: nil,
                audio_enabled: nil,
                description: nil,
                display_order: nil,
                enum_values: nil,
                # What the metric scores: numeric, continuous_qualitative, or
                # binary_workflow_adherence.
                eval_type: nil,
                observability_enabled: nil,
                # Judge prompt used by llm_judge metrics.
                prompt: nil,
                sampling_enabled: nil,
                simulation_enabled: nil,
                # How the metric is evaluated: custom_code or llm_judge.
                type: nil,
                request_options: {}
              )
              end

              # Returns the specified metric.
              sig do
                params(
                  id: Integer,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(Telnyx::AI::Tests::TestFramework::V1::AITestMetric)
              end
              def retrieve(
                # Numeric ID of the metric.
                id,
                request_options: {}
              )
              end

              # Updates the specified metric.
              sig do
                params(
                  id: Integer,
                  add_to_new_agents: T.nilable(T::Boolean),
                  agents: T::Array[Integer],
                  audio_enabled: T::Boolean,
                  description: String,
                  display_order: Integer,
                  enum_values: T::Array[String],
                  eval_type: String,
                  name: String,
                  observability_enabled: T::Boolean,
                  prompt: String,
                  sampling_enabled: T::Boolean,
                  simulation_enabled: T::Boolean,
                  type: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(Telnyx::AI::Tests::TestFramework::V1::AITestMetric)
              end
              def update(
                # Numeric ID of the metric.
                id,
                add_to_new_agents: nil,
                agents: nil,
                audio_enabled: nil,
                description: nil,
                display_order: nil,
                enum_values: nil,
                # What the metric scores: numeric, continuous_qualitative, or
                # binary_workflow_adherence.
                eval_type: nil,
                name: nil,
                observability_enabled: nil,
                # Judge prompt used by llm_judge metrics.
                prompt: nil,
                sampling_enabled: nil,
                simulation_enabled: nil,
                # How the metric is evaluated: custom_code or llm_judge.
                type: nil,
                request_options: {}
              )
              end

              # Returns the metrics available in your organization, optionally filtered by test
              # agent. Each metric scores one aspect of a conversation or scenario run.
              sig do
                params(
                  agent_id: Integer,
                  assistant_id: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  T::Array[Telnyx::AI::Tests::TestFramework::V1::AITestMetric]
                )
              end
              def list(
                # Filter metrics attached to the specified test agent.
                agent_id: nil,
                # Filter metrics attached to the specified Telnyx assistant.
                assistant_id: nil,
                request_options: {}
              )
              end

              # Deletes the specified metric.
              sig do
                params(
                  id: Integer,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.anything)
              end
              def delete(
                # Numeric ID of the metric.
                id,
                request_options: {}
              )
              end

              # Creates several metrics in one request. Accepts an array of metric objects and
              # returns the created metrics.
              sig do
                params(
                  body:
                    T::Array[
                      Telnyx::AI::Tests::TestFramework::V1::CreateAITestMetricRequest::OrHash
                    ],
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  T::Array[Telnyx::AI::Tests::TestFramework::V1::AITestMetric]
                )
              end
              def bulk_create(body:, request_options: {})
              end

              # Starts background generation of suggested metrics for a test agent. Returns a
              # progress ID to poll with the get-test-metric-generation-progress endpoint.
              sig do
                params(
                  agent_id: Integer,
                  num_metrics: Integer,
                  scenarios: T::Array[Integer],
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  Telnyx::AI::Tests::TestFramework::V1::ScenarioGenerationResponse
                )
              end
              def generate_metrics(
                # Test agent to suggest metrics for.
                agent_id:,
                # How many metrics to suggest.
                num_metrics:,
                # Scenario IDs to base the suggestions on.
                scenarios: nil,
                request_options: {}
              )
              end

              # Returns the status of a background metric-generation job started with the
              # generate-test-metrics endpoint.
              sig do
                params(
                  progress_id: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse
                )
              end
              def retrieve_generate_metrics_progress(
                # Progress ID returned by the generate-test-metrics endpoint.
                progress_id:,
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
