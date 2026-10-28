# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Tests
        # @return [Telnyx::Resources::AI::Tests::Schedules]
        attr_reader :schedules

        # @return [Telnyx::Resources::AI::Tests::TestFramework]
        attr_reader :test_framework

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @schedules = Telnyx::Resources::AI::Tests::Schedules.new(client: client)
          @test_framework = Telnyx::Resources::AI::Tests::TestFramework.new(client: client)
        end
      end
    end
  end
end
