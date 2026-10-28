# typed: strong

module Telnyx
  module Resources
    class AI
      class Tests
        class Schedules
          class V1
            # Test agents, evaluator scenarios, metrics, and run results for the AI test
            # framework.
            sig do
              returns(Telnyx::Resources::AI::Tests::Schedules::V1::CronJobs)
            end
            attr_reader :cron_jobs

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
