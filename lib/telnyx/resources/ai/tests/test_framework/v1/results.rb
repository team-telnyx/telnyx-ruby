# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Tests
        class TestFramework
          class V1
            # Test agents, evaluator scenarios, metrics, and run results for the AI test
            # framework.
            class Results
              # Returns the specified test run batch, optionally with per-run detail.
              #
              # @overload retrieve(id, request_options: {})
              #
              # @param id [Integer] Numeric ID of the test run batch.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::TestFramework::V1::TestRunResult]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::ResultRetrieveParams
              def retrieve(id, params = {})
                @client.request(
                  method: :get,
                  path: ["ai/tests/test_framework/v1/results/%1$s", id],
                  model: Telnyx::AI::Tests::TestFramework::V1::TestRunResult,
                  options: params[:request_options]
                )
              end

              # Returns a paginated list of test run batches in your organization, optionally
              # filtered by test agent, search text, or scenarios.
              #
              # @overload list(agent_id: nil, page: nil, page_size: nil, scenarios: nil, search: nil, request_options: {})
              #
              # @param agent_id [Integer] Filter results belonging to the specified test agent.
              #
              # @param page [Integer] Page number (1-based).
              #
              # @param page_size [Integer] Number of results per page.
              #
              # @param scenarios [String] Filter results by a comma-separated list of scenario IDs.
              #
              # @param search [String] Filter results by a search string.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::ResultListParams
              def list(params = {})
                parsed, options = Telnyx::AI::Tests::TestFramework::V1::ResultListParams.dump_request(params)
                query = Telnyx::Internal::Util.encode_query_params(parsed)
                @client.request(
                  method: :get,
                  path: "ai/tests/test_framework/v1/results",
                  query: query,
                  model: Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse,
                  options: options
                )
              end

              # Deletes the specified test run batch.
              #
              # @overload delete(id, request_options: {})
              #
              # @param id [Integer] Numeric ID of the test run batch.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Object]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::ResultDeleteParams
              def delete(id, params = {})
                @client.request(
                  method: :delete,
                  path: ["ai/tests/test_framework/v1/results/%1$s", id],
                  model: Telnyx::Internal::Type::Unknown,
                  options: params[:request_options]
                )
              end

              # Re-executes the scenarios of the specified test run batch and creates a new run
              # batch.
              #
              # @overload rerun(id, request_options: {})
              #
              # @param id [Integer] Numeric ID of the test run batch to rerun.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Tests::TestFramework::V1::TestRunResult]
              #
              # @see Telnyx::Models::AI::Tests::TestFramework::V1::ResultRerunParams
              def rerun(id, params = {})
                @client.request(
                  method: :post,
                  path: ["ai/tests/test_framework/v1/results/%1$s/rerun", id],
                  model: Telnyx::AI::Tests::TestFramework::V1::TestRunResult,
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
