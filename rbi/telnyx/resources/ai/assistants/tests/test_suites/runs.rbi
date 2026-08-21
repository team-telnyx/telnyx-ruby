# typed: strong

module Telnyx
  module Resources
    class AI
      class Assistants
        class Tests
          class TestSuites
            # Configure AI assistant specifications
            class Runs
              # Retrieves paginated history of test runs for a specific test suite with
              # filtering options
              sig do
                params(
                  suite_name: String,
                  page_number: Integer,
                  page_size: Integer,
                  status: String,
                  test_suite_run_id: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  Telnyx::Internal::DefaultFlatPagination[
                    Telnyx::AI::Assistants::Tests::TestRunResponse
                  ]
                )
              end
              def list(
                # Name of the suite.
                suite_name,
                page_number: nil,
                page_size: nil,
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
                  idempotency_key: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  T::Array[Telnyx::AI::Assistants::Tests::TestRunResponse]
                )
              end
              def trigger(
                # Path param: Name of the suite.
                suite_name,
                # Body param: Optional assistant version ID to use for all test runs in this
                # suite. If provided, the version must exist or a 400 error will be returned. If
                # not provided, test will run on main version
                destination_version_id: nil,
                # Header param: Optional opaque, unquoted key for safely retrying the same logical
                # request. Keys must contain 1 to 255 letters, numbers, hyphens, or underscores.
                # Generate a unique UUID v4 for each operation and reuse it only when retrying
                # that operation with the same request. Invalid headers—including duplicate,
                # empty, malformed, or overlong values—return 400 with error code 10015. A request
                # already in progress with the same key returns 409; reusing the key with a
                # different request returns 422. Only successful responses are replayed, for up to
                # 24 hours. Do not include sensitive data in the key.
                idempotency_key: nil,
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
