# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          # @see Telnyx::Resources::AI::Missions::Runs::Events#log
          class EventLogParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute mission_id
            #
            #   @return [String]
            required :mission_id, String

            # @!attribute summary
            #
            #   @return [String]
            required :summary, String

            # @!attribute type
            #
            #   @return [Symbol, Telnyx::Models::AI::Missions::Runs::EventLogParams::Type]
            required :type, enum: -> { Telnyx::AI::Missions::Runs::EventLogParams::Type }

            # @!attribute agent_id
            #
            #   @return [String, nil]
            optional :agent_id, String

            # @!attribute idempotency_key
            #   Prevents duplicate events on retry
            #
            #   @return [String, nil]
            optional :idempotency_key, String

            # @!attribute payload
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :payload, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!attribute step_id
            #
            #   @return [String, nil]
            optional :step_id, String

            # @!method initialize(mission_id:, summary:, type:, agent_id: nil, idempotency_key: nil, payload: nil, step_id: nil, request_options: {})
            #   @param mission_id [String]
            #
            #   @param summary [String]
            #
            #   @param type [Symbol, Telnyx::Models::AI::Missions::Runs::EventLogParams::Type]
            #
            #   @param agent_id [String]
            #
            #   @param idempotency_key [String] Prevents duplicate events on retry
            #
            #   @param payload [Hash{Symbol=>Object}]
            #
            #   @param step_id [String]
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

            module Type
              extend Telnyx::Internal::Type::Enum

              STATUS_CHANGE = :status_change
              STEP_STARTED = :step_started
              STEP_COMPLETED = :step_completed
              STEP_FAILED = :step_failed
              TOOL_CALL = :tool_call
              TOOL_RESULT = :tool_result
              MESSAGE = :message
              ERROR = :error
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
