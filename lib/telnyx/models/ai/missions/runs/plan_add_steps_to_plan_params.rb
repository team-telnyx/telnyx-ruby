# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          # @see Telnyx::Resources::AI::Missions::Runs::Plan#add_steps_to_plan
          class PlanAddStepsToPlanParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute mission_id
            #
            #   @return [String]
            required :mission_id, String

            # @!attribute run_id
            #
            #   @return [String]
            required :run_id, String

            # @!attribute steps
            #
            #   @return [Array<Telnyx::Models::AI::Missions::Runs::CreatePlanStepRequest>]
            required :steps, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Missions::Runs::CreatePlanStepRequest] }

            # @!method initialize(mission_id:, run_id:, steps:, request_options: {})
            #   @param mission_id [String]
            #   @param run_id [String]
            #   @param steps [Array<Telnyx::Models::AI::Missions::Runs::CreatePlanStepRequest>]
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
