# frozen_string_literal: true

module Telnyx
  module Models
    class CallStreamingFailedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallStreamingFailedWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::CallStreamingFailedWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallStreamingFailedWebhookEvent::Data]

      # @see Telnyx::Models::CallStreamingFailedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the type of resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::CallStreamingFailedWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::CallStreamingFailedWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 datetime of when the event occurred.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::CallStreamingFailedWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::CallStreamingFailedWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the resource.
        #
        #   @return [Symbol, Telnyx::Models::CallStreamingFailedWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::CallStreamingFailedWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   @param id [String] Identifies the type of resource.
        #
        #   @param event_type [Symbol, Telnyx::Models::CallStreamingFailedWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
        #
        #   @param payload [Telnyx::Models::CallStreamingFailedWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::CallStreamingFailedWebhookEvent::Data::RecordType] Identifies the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::CallStreamingFailedWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          STREAMING_FAILED = :"streaming.failed"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::CallStreamingFailedWebhookEvent::Data#payload
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

          # @!attribute failure_reason
          #   A short description explaning why the media streaming failed.
          #
          #   @return [String, nil]
          optional :failure_reason, String

          # @!attribute stream_id
          #   Identifies the streaming.
          #
          #   @return [String, nil]
          optional :stream_id, String

          # @!attribute stream_params
          #   Streaming parameters as they were originally given to the Call Control API.
          #
          #   @return [Telnyx::Models::CallStreamingFailedWebhookEvent::Data::Payload::StreamParams, nil]
          optional :stream_params, -> { Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamParams }

          # @!attribute stream_type
          #   The type of stream connection the stream is performing.
          #
          #   @return [Symbol, Telnyx::Models::CallStreamingFailedWebhookEvent::Data::Payload::StreamType, nil]
          optional :stream_type, enum: -> { Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamType }

          # @!method initialize(call_control_id: nil, call_leg_id: nil, call_session_id: nil, client_state: nil, connection_id: nil, failure_reason: nil, stream_id: nil, stream_params: nil, stream_type: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::CallStreamingFailedWebhookEvent::Data::Payload} for more
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
          #   @param failure_reason [String] A short description explaning why the media streaming failed.
          #
          #   @param stream_id [String] Identifies the streaming.
          #
          #   @param stream_params [Telnyx::Models::CallStreamingFailedWebhookEvent::Data::Payload::StreamParams] Streaming parameters as they were originally given to the Call Control API.
          #
          #   @param stream_type [Symbol, Telnyx::Models::CallStreamingFailedWebhookEvent::Data::Payload::StreamType] The type of stream connection the stream is performing.

          # @see Telnyx::Models::CallStreamingFailedWebhookEvent::Data::Payload#stream_params
          class StreamParams < Telnyx::Internal::Type::BaseModel
            # @!attribute stream_url
            #   The destination WebSocket address where the stream is going to be delivered.
            #
            #   @return [String, nil]
            optional :stream_url, String

            # @!attribute track
            #   Specifies which track should be streamed.
            #
            #   @return [Symbol, Telnyx::Models::CallStreamingFailedWebhookEvent::Data::Payload::StreamParams::Track, nil]
            optional :track, enum: -> { Telnyx::CallStreamingFailedWebhookEvent::Data::Payload::StreamParams::Track }

            # @!method initialize(stream_url: nil, track: nil)
            #   Streaming parameters as they were originally given to the Call Control API.
            #
            #   @param stream_url [String] The destination WebSocket address where the stream is going to be delivered.
            #
            #   @param track [Symbol, Telnyx::Models::CallStreamingFailedWebhookEvent::Data::Payload::StreamParams::Track] Specifies which track should be streamed.

            # Specifies which track should be streamed.
            #
            # @see Telnyx::Models::CallStreamingFailedWebhookEvent::Data::Payload::StreamParams#track
            module Track
              extend Telnyx::Internal::Type::Enum

              INBOUND_TRACK = :inbound_track
              OUTBOUND_TRACK = :outbound_track
              BOTH_TRACKS = :both_tracks

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # The type of stream connection the stream is performing.
          #
          # @see Telnyx::Models::CallStreamingFailedWebhookEvent::Data::Payload#stream_type
          module StreamType
            extend Telnyx::Internal::Type::Enum

            WEBSOCKET = :websocket
            DIALOGFLOW = :dialogflow

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Identifies the resource.
        #
        # @see Telnyx::Models::CallStreamingFailedWebhookEvent::Data#record_type
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
