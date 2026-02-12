# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          # @see Telnyx::Resources::AI::Missions::Runs::Plan#retrieve
          class PlanRetrieveResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Array<Telnyx::Models::AI::Missions::Runs::PlanStepData>]
            required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Missions::Runs::PlanStepData] }

            # @!method initialize(data:)
            #   @param data [Array<Telnyx::Models::AI::Missions::Runs::PlanStepData>]
          end
        end
      end
    end
  end
end
