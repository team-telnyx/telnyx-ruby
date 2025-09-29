# typed: strong

module Telnyx
  module Resources
    class AI
      class Assistants
        class Tests
          class Runs
            # Retrieves detailed information about a specific test run execution
            sig do
              params(
                run_id: String,
                test_id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(Telnyx::AI::Assistants::Tests::TestRunResponse)
            end
            def retrieve(run_id, test_id:, request_options: {})
            end

            # Retrieves paginated execution history for a specific assistant test with
            # filtering options
            sig do
              params(
                test_id: String,
                page:
                  Telnyx::AI::Assistants::Tests::RunListParams::Page::OrHash,
                status: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::AI::Assistants::Tests::TestSuites::PaginatedTestRunList
              )
            end
            def list(
              test_id,
              # Consolidated page parameter (deepObject style). Originally: page[size],
              # page[number]
              page: nil,
              # Filter runs by execution status (pending, running, completed, failed, timeout)
              status: nil,
              request_options: {}
            )
            end

            # Initiates immediate execution of a specific assistant test
            sig do
              params(
                test_id: String,
                destination_version_id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(Telnyx::AI::Assistants::Tests::TestRunResponse)
            end
            def trigger(
              test_id,
              # Optional assistant version ID to use for this test run. If provided, the version
              # must exist or a 400 error will be returned. If not provided, test will run on
              # main version
              destination_version_id: nil,
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
