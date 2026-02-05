# frozen_string_literal: true

module Telnyx
  module Models
    class CallSpeakEnded < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifies the type of resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute event_type
      #   The type of event being delivered.
      #
      #   @return [Symbol, Telnyx::Models::CallSpeakEnded::EventType, nil]
      optional :event_type, enum: -> { Telnyx::CallSpeakEnded::EventType }

      # @!attribute occurred_at
      #   ISO 8601 datetime of when the event occurred.
      #
      #   @return [Time, nil]
      optional :occurred_at, Time

      # @!attribute payload
      #
      #   @return [Telnyx::Models::CallSpeakEnded::Payload, nil]
      optional :payload, -> { Telnyx::CallSpeakEnded::Payload }

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [Symbol, Telnyx::Models::CallSpeakEnded::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::CallSpeakEnded::RecordType }

      # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
      #   @param id [String] Identifies the type of resource.
      #
      #   @param event_type [Symbol, Telnyx::Models::CallSpeakEnded::EventType] The type of event being delivered.
      #
      #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
      #
      #   @param payload [Telnyx::Models::CallSpeakEnded::Payload]
      #
      #   @param record_type [Symbol, Telnyx::Models::CallSpeakEnded::RecordType] Identifies the type of the resource.

      # The type of event being delivered.
      #
      # @see Telnyx::Models::CallSpeakEnded#event_type
      module EventType
        extend Telnyx::Internal::Type::Enum

        CALL_SPEAK_ENDED = :"call.speak.ended"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::CallSpeakEnded#payload
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

        # @!attribute status
        #   Reflects how the command ended.
        #
        #   @return [Symbol, Telnyx::Models::CallSpeakEnded::Payload::Status, nil]
        optional :status, enum: -> { Telnyx::CallSpeakEnded::Payload::Status }

        # @!method initialize(call_control_id: nil, call_leg_id: nil, call_session_id: nil, client_state: nil, connection_id: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::CallSpeakEnded::Payload} for more details.
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
        #   @param status [Symbol, Telnyx::Models::CallSpeakEnded::Payload::Status] Reflects how the command ended.

        # Reflects how the command ended.
        #
        # @see Telnyx::Models::CallSpeakEnded::Payload#status
        module Status
          extend Telnyx::Internal::Type::Enum

          COMPLETED = :completed
          CALL_HANGUP = :call_hangup
          CANCELLED_AMD = :cancelled_amd

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Identifies the type of the resource.
      #
      # @see Telnyx::Models::CallSpeakEnded#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EVENT = :event

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
