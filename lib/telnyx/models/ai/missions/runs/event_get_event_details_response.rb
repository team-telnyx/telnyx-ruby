# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          # @see Telnyx::Resources::AI::Missions::Runs::Events#get_event_details
          class EventGetEventDetailsResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Telnyx::Models::AI::Missions::Runs::EventGetEventDetailsResponse::Data]
            required :data, -> { Telnyx::Models::AI::Missions::Runs::EventGetEventDetailsResponse::Data }

            # @!method initialize(data:)
            #   @param data [Telnyx::Models::AI::Missions::Runs::EventGetEventDetailsResponse::Data]

            # @see Telnyx::Models::AI::Missions::Runs::EventGetEventDetailsResponse#data
            class Data < Telnyx::Internal::Type::BaseModel
              # @!attribute event_id
              #
              #   @return [String]
              required :event_id, String

              # @!attribute run_id
              #
              #   @return [String]
              required :run_id, String

              # @!attribute summary
              #
              #   @return [String]
              required :summary, String

              # @!attribute timestamp
              #
              #   @return [Time]
              required :timestamp, Time

              # @!attribute type
              #
              #   @return [Symbol, Telnyx::Models::AI::Missions::Runs::EventGetEventDetailsResponse::Data::Type]
              required :type, enum: -> { Telnyx::Models::AI::Missions::Runs::EventGetEventDetailsResponse::Data::Type }

              # @!attribute agent_id
              #
              #   @return [String, nil]
              optional :agent_id, String

              # @!attribute idempotency_key
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

              # @!method initialize(event_id:, run_id:, summary:, timestamp:, type:, agent_id: nil, idempotency_key: nil, payload: nil, step_id: nil)
              #   @param event_id [String]
              #   @param run_id [String]
              #   @param summary [String]
              #   @param timestamp [Time]
              #   @param type [Symbol, Telnyx::Models::AI::Missions::Runs::EventGetEventDetailsResponse::Data::Type]
              #   @param agent_id [String]
              #   @param idempotency_key [String]
              #   @param payload [Hash{Symbol=>Object}]
              #   @param step_id [String]

              # @see Telnyx::Models::AI::Missions::Runs::EventGetEventDetailsResponse::Data#type
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
end
