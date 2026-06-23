# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          # @see Telnyx::Resources::AI::Missions::Runs::Plan#update_step
          class PlanUpdateStepParams < Telnyx::Internal::Type::BaseModel
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

            # @!attribute step_id
            #
            #   @return [String]
            required :step_id, String

            # @!attribute metadata
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!attribute status
            #
            #   @return [Symbol, Telnyx::Models::AI::Missions::Runs::StepStatus, nil]
            optional :status, enum: -> { Telnyx::AI::Missions::Runs::StepStatus }

            # @!method initialize(mission_id:, run_id:, step_id:, metadata: nil, status: nil, request_options: {})
            #   @param mission_id [String]
            #   @param run_id [String]
            #   @param step_id [String]
            #   @param metadata [Hash{Symbol=>Object}]
            #   @param status [Symbol, Telnyx::Models::AI::Missions::Runs::StepStatus]
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
