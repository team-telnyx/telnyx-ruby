# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          # @see Telnyx::Resources::AI::Missions::Runs::Plan#get_step_details
          class PlanGetStepDetailsResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Telnyx::Models::AI::Missions::Runs::PlanStepData]
            required :data, -> { Telnyx::AI::Missions::Runs::PlanStepData }

            # @!method initialize(data:)
            #   @param data [Telnyx::Models::AI::Missions::Runs::PlanStepData]
          end
        end
      end
    end
  end
end
