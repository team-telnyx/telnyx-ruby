# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Tests
        class TestFramework
          class V1
            # Test agents, evaluator scenarios, metrics, and run results for the AI test
            # framework.
            class Metrics
              # Some parameter documentations has been truncated, see
              # {Telnyx::Models::AI::Tests::TestFramework::V1::MetricCreateParams} for more
              # details.
              #
              # Creates a metric in your organization.
              #
              # @overload create(name:, add_to_new_agents: nil, agents: nil, assistant_id: nil, audio_enabled: nil, description: nil, display_order: nil, enum_values: nil, eval_type: nil, observability_enabled: nil, prompt: nil, sampling_enabled: nil, simulation_enabled: nil, type: nil, request_options: {})
              #
              # @param name [String]
              #
              # @param add_to_new_agents [Boolean, nil]
              #
              # @param agents [Array<Integer>]
              #
              # @param assistant_id [String]
              #
              # @param audio_enabled [Boolean]
              #
              # @param description [String]
              #
              # @param display_order [Integer]
              #
              # @param enum_values [Array<String>]
              #
              # @param eval_type [String] What the metric scores: numeric, continuous_qualitative, or binary_workflow_adhe
              #
              # @param observability_enabled [Boolean]
              #
              # @param prompt [String] Judge prompt used by llm_judge metrics.
              #
              # @param sampling_enabled [Boolean]
              #
              # @param simulation_enabled [Boolean]
              #
              # @param type [String] How the metric is evaluated: custom_code or llm_judge.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::TestFramework::V1::AITestMetric]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::MetricCreateParams
              def create(params)
                parsed, options = Telnyx::AI::Tests::TestFramework::V1::MetricCreateParams.dump_request(params)
                @client.request(
                  method: :post,
                  path: "ai/tests/test_framework/v1/metrics",
                  body: parsed,
                  model: Telnyx::AI::Tests::TestFramework::V1::AITestMetric,
                  options: options
                )
              end

              # Returns the specified metric.
              #
              # @overload retrieve(id, request_options: {})
              #
              # @param id [Integer] Numeric ID of the metric.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::TestFramework::V1::AITestMetric]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveParams
              def retrieve(id, params = {})
                @client.request(
                  method: :get,
                  path: ["ai/tests/test_framework/v1/metrics/%1$s", id],
                  model: Telnyx::AI::Tests::TestFramework::V1::AITestMetric,
                  options: params[:request_options]
                )
              end

              # Some parameter documentations has been truncated, see
              # {Telnyx::Models::AI::Tests::TestFramework::V1::MetricUpdateParams} for more
              # details.
              #
              # Updates the specified metric.
              #
              # @overload update(id, add_to_new_agents: nil, agents: nil, audio_enabled: nil, description: nil, display_order: nil, enum_values: nil, eval_type: nil, name: nil, observability_enabled: nil, prompt: nil, sampling_enabled: nil, simulation_enabled: nil, type: nil, request_options: {})
              #
              # @param id [Integer] Numeric ID of the metric.
              #
              # @param add_to_new_agents [Boolean, nil]
              #
              # @param agents [Array<Integer>]
              #
              # @param audio_enabled [Boolean]
              #
              # @param description [String]
              #
              # @param display_order [Integer]
              #
              # @param enum_values [Array<String>]
              #
              # @param eval_type [String] What the metric scores: numeric, continuous_qualitative, or binary_workflow_adhe
              #
              # @param name [String]
              #
              # @param observability_enabled [Boolean]
              #
              # @param prompt [String] Judge prompt used by llm_judge metrics.
              #
              # @param sampling_enabled [Boolean]
              #
              # @param simulation_enabled [Boolean]
              #
              # @param type [String] How the metric is evaluated: custom_code or llm_judge.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::TestFramework::V1::AITestMetric]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::MetricUpdateParams
              def update(id, params = {})
                parsed, options = Telnyx::AI::Tests::TestFramework::V1::MetricUpdateParams.dump_request(params)
                @client.request(
                  method: :patch,
                  path: ["ai/tests/test_framework/v1/metrics/%1$s", id],
                  body: parsed,
                  model: Telnyx::AI::Tests::TestFramework::V1::AITestMetric,
                  options: options
                )
              end

              # Returns the metrics available in your organization, optionally filtered by test
              # agent. Each metric scores one aspect of a conversation or scenario run.
              #
              # @overload list(agent_id: nil, assistant_id: nil, request_options: {})
              #
              # @param agent_id [Integer] Filter metrics attached to the specified test agent.
              #
              # @param assistant_id [String] Filter metrics attached to the specified Telnyx assistant.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Array<Telnyx::Models::AI::Tests::TestFramework::V1::AITestMetric>]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::MetricListParams
              def list(params = {})
                parsed, options = Telnyx::AI::Tests::TestFramework::V1::MetricListParams.dump_request(params)
                query = Telnyx::Internal::Util.encode_query_params(parsed)
                @client.request(
                  method: :get,
                  path: "ai/tests/test_framework/v1/metrics",
                  query: query,
                  model: Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Tests::TestFramework::V1::AITestMetric],
                  options: options
                )
              end

              # Deletes the specified metric.
              #
              # @overload delete(id, request_options: {})
              #
              # @param id [Integer] Numeric ID of the metric.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Object]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::MetricDeleteParams
              def delete(id, params = {})
                @client.request(
                  method: :delete,
                  path: ["ai/tests/test_framework/v1/metrics/%1$s", id],
                  model: Telnyx::Internal::Type::Unknown,
                  options: params[:request_options]
                )
              end

              # Creates several metrics in one request. Accepts an array of metric objects and
              # returns the created metrics.
              #
              # @overload bulk_create(body:, request_options: {})
              #
              # @param body [Array<Telnyx::Models::AI::Tests::TestFramework::V1::CreateAITestMetricRequest>]
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Array<Telnyx::Models::AI::Tests::TestFramework::V1::AITestMetric>]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::MetricBulkCreateParams
              def bulk_create(params)
                parsed, options = Telnyx::AI::Tests::TestFramework::V1::MetricBulkCreateParams.dump_request(params)
                @client.request(
                  method: :post,
                  path: "ai/tests/test_framework/v1/metrics/bulk_create",
                  body: parsed[:body],
                  model: Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Tests::TestFramework::V1::AITestMetric],
                  options: options
                )
              end

              # Starts background generation of suggested metrics for a test agent. Returns a
              # progress ID to poll with the get-test-metric-generation-progress endpoint.
              #
              # @overload generate_metrics(agent_id:, num_metrics:, scenarios: nil, request_options: {})
              #
              # @param agent_id [Integer] Test agent to suggest metrics for.
              #
              # @param num_metrics [Integer] How many metrics to suggest.
              #
              # @param scenarios [Array<Integer>] Scenario IDs to base the suggestions on.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioGenerationResponse]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::MetricGenerateMetricsParams
              def generate_metrics(params)
                parsed, options = Telnyx::AI::Tests::TestFramework::V1::MetricGenerateMetricsParams.dump_request(params)
                @client.request(
                  method: :post,
                  path: "ai/tests/test_framework/v1/metrics/generate_metrics",
                  body: parsed,
                  model: Telnyx::AI::Tests::TestFramework::V1::ScenarioGenerationResponse,
                  options: options
                )
              end

              # Returns the status of a background metric-generation job started with the
              # generate-test-metrics endpoint.
              #
              # @overload retrieve_generate_metrics_progress(progress_id:, request_options: {})
              #
              # @param progress_id [String] Progress ID returned by the generate-test-metrics endpoint.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressParams
              def retrieve_generate_metrics_progress(params)
                parsed, options =
                  Telnyx::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressParams.dump_request(params)
                query = Telnyx::Internal::Util.encode_query_params(parsed)
                @client.request(
                  method: :get,
                  path: "ai/tests/test_framework/v1/metrics/generate_metrics_progress",
                  query: query,
                  model: Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse,
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
