# frozen_string_literal: true

module Telnyx
  module Models
    class CallRecordingErrorWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallRecordingErrorWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::CallRecordingErrorWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallRecordingErrorWebhookEvent::Data]

      # @see Telnyx::Models::CallRecordingErrorWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the type of resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::CallRecordingErrorWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::CallRecordingErrorWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 datetime of when the event occurred.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::CallRecordingErrorWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::CallRecordingErrorWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::CallRecordingErrorWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::CallRecordingErrorWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   @param id [String] Identifies the type of resource.
        #
        #   @param event_type [Symbol, Telnyx::Models::CallRecordingErrorWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
        #
        #   @param payload [Telnyx::Models::CallRecordingErrorWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::CallRecordingErrorWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::CallRecordingErrorWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          CALL_RECORDING_ERROR = :"call.recording.error"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::CallRecordingErrorWebhookEvent::Data#payload
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

          # @!attribute reason
          #   Indication that there was a problem recording the call.
          #
          #   @return [Symbol, Telnyx::Models::CallRecordingErrorWebhookEvent::Data::Payload::Reason, nil]
          optional :reason, enum: -> { Telnyx::CallRecordingErrorWebhookEvent::Data::Payload::Reason }

          # @!method initialize(call_control_id: nil, call_leg_id: nil, call_session_id: nil, client_state: nil, connection_id: nil, reason: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::CallRecordingErrorWebhookEvent::Data::Payload} for more
          #   details.
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
          #   @param reason [Symbol, Telnyx::Models::CallRecordingErrorWebhookEvent::Data::Payload::Reason] Indication that there was a problem recording the call.

          # Indication that there was a problem recording the call.
          #
          # @see Telnyx::Models::CallRecordingErrorWebhookEvent::Data::Payload#reason
          module Reason
            extend Telnyx::Internal::Type::Enum

            FAILED_TO_AUTHORIZE_WITH_STORAGE_USING_CUSTOM_CREDENTIALS =
              :"Failed to authorize with storage using custom credentials"
            INVALID_CREDENTIALS_JSON = :"Invalid credentials json"
            UNSUPPORTED_BACKEND = :"Unsupported backend"
            INTERNAL_SERVER_ERROR = :"Internal server error"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::CallRecordingErrorWebhookEvent::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EVENT = :event

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
