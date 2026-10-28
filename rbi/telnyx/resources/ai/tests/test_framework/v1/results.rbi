# typed: strong

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
              sig do
                params(
                  id: Integer,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(Telnyx::AI::Tests::TestFramework::V1::TestRunResult)
              end
              def retrieve(
                # Numeric ID of the test run batch.
                id,
                request_options: {}
              )
              end

              # Returns a paginated list of test run batches in your organization, optionally
              # filtered by test agent, search text, or scenarios.
              sig do
                params(
                  agent_id: Integer,
                  page: Integer,
                  page_size: Integer,
                  scenarios: String,
                  search: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse
                )
              end
              def list(
                # Filter results belonging to the specified test agent.
                agent_id: nil,
                # Page number (1-based).
                page: nil,
                # Number of results per page.
                page_size: nil,
                # Filter results by a comma-separated list of scenario IDs.
                scenarios: nil,
                # Filter results by a search string.
                search: nil,
                request_options: {}
              )
              end

              # Deletes the specified test run batch.
              sig do
                params(
                  id: Integer,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.anything)
              end
              def delete(
                # Numeric ID of the test run batch.
                id,
                request_options: {}
              )
              end

              # Re-executes the scenarios of the specified test run batch and creates a new run
              # batch.
              sig do
                params(
                  id: Integer,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(Telnyx::AI::Tests::TestFramework::V1::TestRunResult)
              end
              def rerun(
                # Numeric ID of the test run batch to rerun.
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
