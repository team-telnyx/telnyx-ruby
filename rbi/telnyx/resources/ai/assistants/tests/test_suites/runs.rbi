# typed: strong

module Telnyx
  module Resources
    class AI
      class Assistants
        class Tests
          class TestSuites
            class Runs
              # Retrieves paginated history of test runs for a specific test suite with
              # filtering options
              sig do
                params(
                  suite_name: String,
                  page:
                    Telnyx::AI::Assistants::Tests::TestSuites::RunListParams::Page::OrHash,
                  status: String,
                  test_suite_run_id: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  Telnyx::AI::Assistants::Tests::TestSuites::PaginatedTestRunList
                )
              end
              def list(
                suite_name,
                # Consolidated page parameter (deepObject style). Originally: page[size],
                # page[number]
                page: nil,
                # Filter runs by execution status (pending, running, completed, failed, timeout)
                status: nil,
                # Filter runs by specific suite execution batch ID
                test_suite_run_id: nil,
                request_options: {}
              )
              end

              # Executes all tests within a specific test suite as a batch operation
              sig do
                params(
                  suite_name: String,
                  destination_version_id: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  T::Array[Telnyx::AI::Assistants::Tests::TestRunResponse]
                )
              end
              def trigger(
                suite_name,
                # Optional assistant version ID to use for all test runs in this suite. If
                # provided, the version must exist or a 400 error will be returned. If not
                # provided, test will run on main version
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
end
