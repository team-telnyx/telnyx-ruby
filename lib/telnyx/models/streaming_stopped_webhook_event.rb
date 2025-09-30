# frozen_string_literal: true

module Telnyx
  module Models
    class StreamingStoppedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::StreamingStoppedWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::StreamingStoppedWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::StreamingStoppedWebhookEvent::Data]

      # @see Telnyx::Models::StreamingStoppedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the type of resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::StreamingStoppedWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::StreamingStoppedWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 datetime of when the event occurred.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::StreamingStoppedWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::StreamingStoppedWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::StreamingStoppedWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::StreamingStoppedWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   @param id [String] Identifies the type of resource.
        #
        #   @param event_type [Symbol, Telnyx::Models::StreamingStoppedWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
        #
        #   @param payload [Telnyx::Models::StreamingStoppedWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::StreamingStoppedWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::StreamingStoppedWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          STREAMING_STOPPED = :"streaming.stopped"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::StreamingStoppedWebhookEvent::Data#payload
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

          # @!attribute stream_url
          #   Destination WebSocket address where the stream is going to be delivered.
          #
          #   @return [String, nil]
          optional :stream_url, String

          # @!method initialize(call_control_id: nil, call_leg_id: nil, call_session_id: nil, client_state: nil, connection_id: nil, stream_url: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::StreamingStoppedWebhookEvent::Data::Payload} for more details.
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
          #   @param stream_url [String] Destination WebSocket address where the stream is going to be delivered.
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::StreamingStoppedWebhookEvent::Data#record_type
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
