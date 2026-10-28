# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module Schedules
          module V1
            # @see Telnyx::Resources::AI::Tests::Schedules::V1::CronJobs#retrieve_cron_jobs
            class CronJobRetrieveCronJobsParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              # @!attribute agent_id
              #   Filter jobs belonging to the specified test agent.
              #
              #   @return [Integer, nil]
              optional :agent_id, Integer

              # @!method initialize(agent_id: nil, request_options: {})
              #   @param agent_id [Integer] Filter jobs belonging to the specified test agent.
              #
              #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
            end
          end
        end
      end
    end
  end
end
