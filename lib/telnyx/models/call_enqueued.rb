# frozen_string_literal: true

module Telnyx
  module Models
    class CallEnqueued < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifies the type of resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute event_type
      #   The type of event being delivered.
      #
      #   @return [Symbol, Telnyx::Models::CallEnqueued::EventType, nil]
      optional :event_type, enum: -> { Telnyx::CallEnqueued::EventType }

      # @!attribute occurred_at
      #   ISO 8601 datetime of when the event occurred.
      #
      #   @return [Time, nil]
      optional :occurred_at, Time

      # @!attribute payload
      #
      #   @return [Telnyx::Models::CallEnqueued::Payload, nil]
      optional :payload, -> { Telnyx::CallEnqueued::Payload }

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [Symbol, Telnyx::Models::CallEnqueued::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::CallEnqueued::RecordType }

      # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
      #   @param id [String] Identifies the type of resource.
      #
      #   @param event_type [Symbol, Telnyx::Models::CallEnqueued::EventType] The type of event being delivered.
      #
      #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
      #
      #   @param payload [Telnyx::Models::CallEnqueued::Payload]
      #
      #   @param record_type [Symbol, Telnyx::Models::CallEnqueued::RecordType] Identifies the type of the resource.

      # The type of event being delivered.
      #
      # @see Telnyx::Models::CallEnqueued#event_type
      module EventType
        extend Telnyx::Internal::Type::Enum

        CALL_ENQUEUED = :"call.enqueued"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::CallEnqueued#payload
      class Payload < Telnyx::Internal::Type::BaseModel
        # @!attribute call_control_id
        #   Call ID used to issue commands via Call Control API.
        #
        #   @return [String, nil]
        optional :call_control_id, String

        # @!attribute call_leg_id
        #   ID that is unique to the call and can be used to correlate webhook events.
        #
        #   @return [String, nil]
        optional :call_leg_id, String

        # @!attribute call_session_id
        #   ID that is unique to the call session and can be used to correlate webhook
        #   events. Call session is a group of related call legs that logically belong to
        #   the same phone call, e.g. an inbound and outbound leg of a transferred call.
        #
        #   @return [String, nil]
        optional :call_session_id, String

        # @!attribute client_state
        #   State received from a command.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute connection_id
        #   Call Control App ID (formerly Telnyx connection ID) used in the call.
        #
        #   @return [String, nil]
        optional :connection_id, String

        # @!attribute current_position
        #   Current position of the call in the queue.
        #
        #   @return [Integer, nil]
        optional :current_position, Integer

        # @!attribute queue
        #   The name of the queue
        #
        #   @return [String, nil]
        optional :queue, String

        # @!attribute queue_avg_wait_time_secs
        #   Average time call spends in the queue in seconds.
        #
        #   @return [Integer, nil]
        optional :queue_avg_wait_time_secs, Integer

        # @!method initialize(call_control_id: nil, call_leg_id: nil, call_session_id: nil, client_state: nil, connection_id: nil, current_position: nil, queue: nil, queue_avg_wait_time_secs: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::CallEnqueued::Payload} for more details.
        #
        #   @param call_control_id [String] Call ID used to issue commands via Call Control API.
        #
        #   @param call_leg_id [String] ID that is unique to the call and can be used to correlate webhook events.
        #
        #   @param call_session_id [String] ID that is unique to the call session and can be used to correlate webhook event
        #
        #   @param client_state [String] State received from a command.
        #
        #   @param connection_id [String] Call Control App ID (formerly Telnyx connection ID) used in the call.
        #
        #   @param current_position [Integer] Current position of the call in the queue.
        #
        #   @param queue [String] The name of the queue
        #
        #   @param queue_avg_wait_time_secs [Integer] Average time call spends in the queue in seconds.
      end

      # Identifies the type of the resource.
      #
      # @see Telnyx::Models::CallEnqueued#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EVENT = :event

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
