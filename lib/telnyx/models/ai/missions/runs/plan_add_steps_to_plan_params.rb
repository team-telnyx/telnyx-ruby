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

            # @!attribute steps
            #
            #   @return [Array<Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanParams::Step>]
            required :steps,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Missions::Runs::PlanAddStepsToPlanParams::Step] }

            # @!method initialize(mission_id:, steps:, request_options: {})
            #   @param mission_id [String]
            #   @param steps [Array<Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanParams::Step>]
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

            class Step < Telnyx::Internal::Type::BaseModel
              # @!attribute description
              #
              #   @return [String]
              required :description, String

              # @!attribute sequence
              #
              #   @return [Integer]
              required :sequence, Integer

              # @!attribute step_id
              #
              #   @return [String]
              required :step_id, String

              # @!attribute metadata
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

              # @!attribute parent_step_id
              #
              #   @return [String, nil]
              optional :parent_step_id, String

              # @!method initialize(description:, sequence:, step_id:, metadata: nil, parent_step_id: nil)
              #   @param description [String]
              #   @param sequence [Integer]
              #   @param step_id [String]
              #   @param metadata [Hash{Symbol=>Object}]
              #   @param parent_step_id [String]
            end
          end
        end
      end
    end
  end
end
