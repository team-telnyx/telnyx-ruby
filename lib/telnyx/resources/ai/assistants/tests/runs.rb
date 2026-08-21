# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Assistants
        class Tests
          # Configure AI assistant specifications
          class Runs
            # Retrieves detailed information about a specific test run execution
            #
            # @overload retrieve(run_id, test_id:, request_options: {})
            #
            # @param run_id [String] Unique identifier of the run.
            #
            # @param test_id [String] Unique identifier of the test.
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::AI::Assistants::Tests::TestRunResponse]
            #
            # @see Telnyx::Models::AI::Assistants::Tests::RunRetrieveParams
            def retrieve(run_id, params)
              parsed, options = Telnyx::AI::Assistants::Tests::RunRetrieveParams.dump_request(params)
              test_id =
                parsed.delete(:test_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :get,
                path: ["ai/assistants/tests/%1$s/runs/%2$s", test_id, run_id],
                model: Telnyx::AI::Assistants::Tests::TestRunResponse,
                options: options
              )
            end

            # Retrieves paginated execution history for a specific assistant test with
            # filtering options
            #
            # @overload list(test_id, page_number: nil, page_size: nil, status: nil, request_options: {})
            #
            # @param test_id [String] Unique identifier of the test.
            #
            # @param page_number [Integer]
            #
            # @param page_size [Integer]
            #
            # @param status [String] Filter runs by execution status (pending, running, completed, failed, timeout)
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AI::Assistants::Tests::TestRunResponse>]
            #
            # @see Telnyx::Models::AI::Assistants::Tests::RunListParams
            def list(test_id, params = {})
              parsed, options = Telnyx::AI::Assistants::Tests::RunListParams.dump_request(params)
              query = Telnyx::Internal::Util.encode_query_params(parsed)
              @client.request(
                method: :get,
                path: ["ai/assistants/tests/%1$s/runs", test_id],
                query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
                page: Telnyx::Internal::DefaultFlatPagination,
                model: Telnyx::AI::Assistants::Tests::TestRunResponse,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {Telnyx::Models::AI::Assistants::Tests::RunTriggerParams} for more details.
            #
            # Initiates immediate execution of a specific assistant test
            #
            # @overload trigger(test_id, destination_version_id: nil, idempotency_key: nil, request_options: {})
            #
            # @param test_id [String] Path param: Unique identifier of the test.
            #
            # @param destination_version_id [String] Body param: Optional assistant version ID to use for this test run. If provided,
            #
            # @param idempotency_key [String] Header param: Optional opaque, unquoted key for safely retrying the same logical
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::AI::Assistants::Tests::TestRunResponse]
            #
            # @see Telnyx::Models::AI::Assistants::Tests::RunTriggerParams
            def trigger(test_id, params = {})
              parsed, options = Telnyx::AI::Assistants::Tests::RunTriggerParams.dump_request(params)
              header_params = {idempotency_key: "idempotency-key"}
              @client.request(
                method: :post,
                path: ["ai/assistants/tests/%1$s/runs", test_id],
                headers: parsed.slice(*header_params.keys).transform_keys(header_params),
                body: parsed.except(*header_params.keys),
                model: Telnyx::AI::Assistants::Tests::TestRunResponse,
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
