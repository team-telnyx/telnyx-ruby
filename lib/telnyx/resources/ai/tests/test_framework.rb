# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Tests
        class TestFramework
          # Test agents, evaluator scenarios, metrics, and run results for the AI test
          # framework.
          # @return [Telnyx::Resources::AI::Tests::TestFramework::V1]
          attr_reader :v1

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
            @v1 = Telnyx::Resources::AI::Tests::TestFramework::V1.new(client: client)
          end
        end
      end
    end
  end
end
