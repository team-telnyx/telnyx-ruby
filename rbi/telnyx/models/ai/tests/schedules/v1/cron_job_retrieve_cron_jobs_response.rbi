# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module Schedules
          module V1
            CronJobRetrieveCronJobsResponse =
              T.let(
                Telnyx::Internal::Type::ArrayOf[
                  Telnyx::AI::Tests::Schedules::V1::ScheduledTestJob
                ],
                Telnyx::Internal::Type::Converter
              )
          end
        end
      end
    end
  end
end
