# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          # @see Telnyx::Resources::AI::Missions::Runs::Plan#add_steps_to_plan
          class PlanAddStepsToPlanResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Array<Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse::Data>]
            required :data,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse::Data] }

            # @!method initialize(data:)
            #   @param data [Array<Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse::Data>]

            class Data < Telnyx::Internal::Type::BaseModel
              # @!attribute description
              #
              #   @return [String]
              required :description, String

              # @!attribute run_id
              #
              #   @return [String]
              required :run_id, String

              # @!attribute sequence
              #
              #   @return [Integer]
              required :sequence, Integer

              # @!attribute status
              #
              #   @return [Symbol, Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse::Data::Status]
              required :status,
                       enum: -> { Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse::Data::Status }

              # @!attribute step_id
              #
              #   @return [String]
              required :step_id, String

              # @!attribute completed_at
              #
              #   @return [Time, nil]
              optional :completed_at, Time

              # @!attribute metadata
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

              # @!attribute parent_step_id
              #
              #   @return [String, nil]
              optional :parent_step_id, String

              # @!attribute started_at
              #
              #   @return [Time, nil]
              optional :started_at, Time

              # @!method initialize(description:, run_id:, sequence:, status:, step_id:, completed_at: nil, metadata: nil, parent_step_id: nil, started_at: nil)
              #   @param description [String]
              #   @param run_id [String]
              #   @param sequence [Integer]
              #   @param status [Symbol, Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse::Data::Status]
              #   @param step_id [String]
              #   @param completed_at [Time]
              #   @param metadata [Hash{Symbol=>Object}]
              #   @param parent_step_id [String]
              #   @param started_at [Time]

              # @see Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse::Data#status
              module Status
                extend Telnyx::Internal::Type::Enum

                PENDING = :pending
                IN_PROGRESS = :in_progress
                COMPLETED = :completed
                SKIPPED = :skipped
                FAILED = :failed

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end
        end
      end
    end
  end
end
