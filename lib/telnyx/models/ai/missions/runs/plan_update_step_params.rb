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

            # @!attribute metadata
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!attribute status
            #
            #   @return [Symbol, Telnyx::Models::AI::Missions::Runs::PlanUpdateStepParams::Status, nil]
            optional :status, enum: -> { Telnyx::AI::Missions::Runs::PlanUpdateStepParams::Status }

            # @!method initialize(mission_id:, run_id:, metadata: nil, status: nil, request_options: {})
            #   @param mission_id [String]
            #   @param run_id [String]
            #   @param metadata [Hash{Symbol=>Object}]
            #   @param status [Symbol, Telnyx::Models::AI::Missions::Runs::PlanUpdateStepParams::Status]
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

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
