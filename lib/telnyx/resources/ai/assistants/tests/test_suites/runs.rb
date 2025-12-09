# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Assistants
        class Tests
          class TestSuites
            class Runs
              # Retrieves paginated history of test runs for a specific test suite with
              # filtering options
              #
              # @overload list(suite_name, page_number: nil, page_size: nil, status: nil, test_suite_run_id: nil, request_options: {})
              #
              # @param suite_name [String]
              #
              # @param page_number [Integer]
              #
              # @param page_size [Integer]
              #
              # @param status [String] Filter runs by execution status (pending, running, completed, failed, timeout)
              #
              # @param test_suite_run_id [String] Filter runs by specific suite execution batch ID
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AI::Assistants::Tests::TestRunResponse>]
              #
              # @see Telnyx::Models::AI::Assistants::Tests::TestSuites::RunListParams
              def list(suite_name, params = {})
                parsed, options = Telnyx::AI::Assistants::Tests::TestSuites::RunListParams.dump_request(params)
                @client.request(
                  method: :get,
                  path: ["ai/assistants/tests/test-suites/%1$s/runs", suite_name],
                  query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
                  page: Telnyx::Internal::DefaultFlatPagination,
                  model: Telnyx::AI::Assistants::Tests::TestRunResponse,
                  options: options
                )
              end

              # Some parameter documentations has been truncated, see
              # {Telnyx::Models::AI::Assistants::Tests::TestSuites::RunTriggerParams} for more
              # details.
              #
              # Executes all tests within a specific test suite as a batch operation
              #
              # @overload trigger(suite_name, destination_version_id: nil, request_options: {})
              #
              # @param suite_name [String]
              #
              # @param destination_version_id [String] Optional assistant version ID to use for all test runs in this suite. If provide
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Array<Telnyx::Models::AI::Assistants::Tests::TestRunResponse>]
              #
              # @see Telnyx::Models::AI::Assistants::Tests::TestSuites::RunTriggerParams
              def trigger(suite_name, params = {})
                parsed, options = Telnyx::AI::Assistants::Tests::TestSuites::RunTriggerParams.dump_request(params)
                @client.request(
                  method: :post,
                  path: ["ai/assistants/tests/test-suites/%1$s/runs", suite_name],
                  body: parsed,
                  model: Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::Tests::TestRunResponse],
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
