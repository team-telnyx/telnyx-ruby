# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Tests
        class Schedules
          class V1
            # Test agents, evaluator scenarios, metrics, and run results for the AI test
            # framework.
            # @return [Telnyx::Resources::AI::Tests::Schedules::V1::CronJobs]
            attr_reader :cron_jobs

            # @api private
            #
            # @param client [Telnyx::Client]
            def initialize(client:)
              @client = client
              @cron_jobs = Telnyx::Resources::AI::Tests::Schedules::V1::CronJobs.new(client: client)
            end
          end
        end
      end
    end
  end
end
