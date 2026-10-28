# typed: strong

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
            sig do
              returns(Telnyx::Resources::AI::Tests::TestFramework::V1::Aiagents)
            end
            attr_reader :aiagents

            # Test agents, evaluator scenarios, metrics, and run results for the AI test
            # framework.
            sig do
              returns(Telnyx::Resources::AI::Tests::TestFramework::V1::Metrics)
            end
            attr_reader :metrics

            # Test agents, evaluator scenarios, metrics, and run results for the AI test
            # framework.
            sig do
              returns(Telnyx::Resources::AI::Tests::TestFramework::V1::Results)
            end
            attr_reader :results

            # Test agents, evaluator scenarios, metrics, and run results for the AI test
            # framework.
            sig do
              returns(
                Telnyx::Resources::AI::Tests::TestFramework::V1::Scenarios
              )
            end
            attr_reader :scenarios

            # Returns the catalogue of test personalities available to your organization. A
            # personality describes how a simulated caller speaks: prompt, language, accent,
            # voice, interruption level, and call-behaviour settings.
            sig do
              params(request_options: Telnyx::RequestOptions::OrHash).returns(
                T::Array[
                  Telnyx::Models::AI::Tests::TestFramework::V1RetrievePersonalitiesResponseItem
                ]
              )
            end
            def retrieve_personalities(request_options: {})
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
