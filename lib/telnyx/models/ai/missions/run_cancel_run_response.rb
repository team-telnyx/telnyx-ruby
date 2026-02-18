# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        # @see Telnyx::Resources::AI::Missions::Runs#cancel_run
        class RunCancelRunResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::AI::Missions::RunCancelRunResponse::Data]
          required :data, -> { Telnyx::Models::AI::Missions::RunCancelRunResponse::Data }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::AI::Missions::RunCancelRunResponse::Data]

          # @see Telnyx::Models::AI::Missions::RunCancelRunResponse#data
          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute mission_id
            #
            #   @return [String]
            required :mission_id, String

            # @!attribute run_id
            #
            #   @return [String]
            required :run_id, String

            # @!attribute started_at
            #
            #   @return [Time]
            required :started_at, Time

            # @!attribute status
            #
            #   @return [Symbol, Telnyx::Models::AI::Missions::RunCancelRunResponse::Data::Status]
            required :status, enum: -> { Telnyx::Models::AI::Missions::RunCancelRunResponse::Data::Status }

            # @!attribute updated_at
            #
            #   @return [Time]
            required :updated_at, Time

            # @!attribute error
            #
            #   @return [String, nil]
            optional :error, String

            # @!attribute finished_at
            #
            #   @return [Time, nil]
            optional :finished_at, Time

            # @!attribute input
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :input, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!attribute metadata
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!attribute result_payload
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :result_payload, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!attribute result_summary
            #
            #   @return [String, nil]
            optional :result_summary, String

            # @!method initialize(mission_id:, run_id:, started_at:, status:, updated_at:, error: nil, finished_at: nil, input: nil, metadata: nil, result_payload: nil, result_summary: nil)
            #   @param mission_id [String]
            #   @param run_id [String]
            #   @param started_at [Time]
            #   @param status [Symbol, Telnyx::Models::AI::Missions::RunCancelRunResponse::Data::Status]
            #   @param updated_at [Time]
            #   @param error [String]
            #   @param finished_at [Time]
            #   @param input [Hash{Symbol=>Object}]
            #   @param metadata [Hash{Symbol=>Object}]
            #   @param result_payload [Hash{Symbol=>Object}]
            #   @param result_summary [String]

            # @see Telnyx::Models::AI::Missions::RunCancelRunResponse::Data#status
            module Status
              extend Telnyx::Internal::Type::Enum

              PENDING = :pending
              RUNNING = :running
              PAUSED = :paused
              SUCCEEDED = :succeeded
              FAILED = :failed
              CANCELLED = :cancelled

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
