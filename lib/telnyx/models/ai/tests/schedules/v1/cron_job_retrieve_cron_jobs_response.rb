# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module Schedules
          module V1
            # @type [Telnyx::Internal::Type::Converter]
            CronJobRetrieveCronJobsResponse =
              Telnyx::Internal::Type::ArrayOf[-> { Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob }]
          end
        end
      end
    end
  end
end
