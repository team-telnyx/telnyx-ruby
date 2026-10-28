# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Tests
        class TestFramework
          # Test agents, evaluator scenarios, metrics, and run results for the AI test
          # framework.
          class V1
            # Test agents, evaluator scenarios, metrics, and run results for the AI test
            # framework.
            # @return [Telnyx::Resources::AI::Tests::TestFramework::V1::Aiagents]
            attr_reader :aiagents

            # Test agents, evaluator scenarios, metrics, and run results for the AI test
            # framework.
            # @return [Telnyx::Resources::AI::Tests::TestFramework::V1::Metrics]
            attr_reader :metrics

            # Test agents, evaluator scenarios, metrics, and run results for the AI test
            # framework.
            # @return [Telnyx::Resources::AI::Tests::TestFramework::V1::Results]
            attr_reader :results

            # Test agents, evaluator scenarios, metrics, and run results for the AI test
            # framework.
            # @return [Telnyx::Resources::AI::Tests::TestFramework::V1::Scenarios]
            attr_reader :scenarios

            # Returns the catalogue of test personalities available to your organization. A
            # personality describes how a simulated caller speaks: prompt, language, accent,
            # voice, interruption level, and call-behaviour settings.
            #
            # @overload retrieve_personalities(request_options: {})
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Array<Telnyx::Models::AI::Tests::TestFramework::V1RetrievePersonalitiesResponseItem>]
            #
            # @see Telnyx::Models::AI::Tests::TestFramework::V1RetrievePersonalitiesParams
            def retrieve_personalities(params = {})
              @client.request(
                method: :get,
                path: "ai/tests/test_framework/v1/personalities",
                model: Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Tests::TestFramework::V1RetrievePersonalitiesResponseItem],
                options: params[:request_options]
              )
            end

            # @api private
            #
            # @param client [Telnyx::Client]
            def initialize(client:)
              @client = client
              @aiagents = Telnyx::Resources::AI::Tests::TestFramework::V1::Aiagents.new(client: client)
              @metrics = Telnyx::Resources::AI::Tests::TestFramework::V1::Metrics.new(client: client)
              @results = Telnyx::Resources::AI::Tests::TestFramework::V1::Results.new(client: client)
              @scenarios = Telnyx::Resources::AI::Tests::TestFramework::V1::Scenarios.new(client: client)
            end
          end
        end
      end
    end
  end
end
