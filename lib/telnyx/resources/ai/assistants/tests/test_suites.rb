# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Assistants
        class Tests
          class TestSuites
            # @return [Telnyx::Resources::AI::Assistants::Tests::TestSuites::Runs]
            attr_reader :runs

            # Retrieves a list of all distinct test suite names available to the current user
            #
            # @overload list(request_options: {})
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::AI::Assistants::Tests::TestSuiteListResponse]
            #
            # @see Telnyx::Models::AI::Assistants::Tests::TestSuiteListParams
            def list(params = {})
              @client.request(
                method: :get,
                path: "ai/assistants/tests/test-suites",
                model: Telnyx::Models::AI::Assistants::Tests::TestSuiteListResponse,
                options: params[:request_options]
              )
            end

            # @api private
            #
            # @param client [Telnyx::Client]
            def initialize(client:)
              @client = client
              @runs = Telnyx::Resources::AI::Assistants::Tests::TestSuites::Runs.new(client: client)
            end
          end
        end
      end
    end
  end
end
