# frozen_string_literal: true

module Telnyx
  module Models
    class CallPlaybackEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallPlaybackEndedWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::CallPlaybackEndedWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallPlaybackEndedWebhookEvent::Data]

      # @see Telnyx::Models::CallPlaybackEndedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the type of resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::CallPlaybackEndedWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::CallPlaybackEndedWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 datetime of when the event occurred.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::CallPlaybackEndedWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::CallPlaybackEndedWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::CallPlaybackEndedWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::CallPlaybackEndedWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   @param id [String] Identifies the type of resource.
        #
        #   @param event_type [Symbol, Telnyx::Models::CallPlaybackEndedWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
        #
        #   @param payload [Telnyx::Models::CallPlaybackEndedWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::CallPlaybackEndedWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::CallPlaybackEndedWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          CALL_PLAYBACK_ENDED = :"call.playback.ended"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::CallPlaybackEndedWebhookEvent::Data#payload
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

          # @!attribute media_name
          #   The name of the audio media file being played back, if media_name has been used
          #   to start.
          #
          #   @return [String, nil]
          optional :media_name, String

          # @!attribute media_url
          #   The audio URL being played back, if audio_url has been used to start.
          #
          #   @return [String, nil]
          optional :media_url, String

          # @!attribute overlay
          #   Whether the stopped audio was in overlay mode or not.
          #
          #   @return [Boolean, nil]
          optional :overlay, Telnyx::Internal::Type::Boolean

          # @!attribute status
          #   Reflects how command ended.
          #
          #   @return [Symbol, Telnyx::Models::CallPlaybackEndedWebhookEvent::Data::Payload::Status, nil]
          optional :status, enum: -> { Telnyx::CallPlaybackEndedWebhookEvent::Data::Payload::Status }

          # @!attribute status_detail
          #   Provides details in case of failure.
          #
          #   @return [String, nil]
          optional :status_detail, String

          # @!method initialize(call_control_id: nil, call_leg_id: nil, call_session_id: nil, client_state: nil, connection_id: nil, media_name: nil, media_url: nil, overlay: nil, status: nil, status_detail: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::CallPlaybackEndedWebhookEvent::Data::Payload} for more details.
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
          #   @param media_name [String] The name of the audio media file being played back, if media_name has been used
          #
          #   @param media_url [String] The audio URL being played back, if audio_url has been used to start.
          #
          #   @param overlay [Boolean] Whether the stopped audio was in overlay mode or not.
          #
          #   @param status [Symbol, Telnyx::Models::CallPlaybackEndedWebhookEvent::Data::Payload::Status] Reflects how command ended.
          #
          #   @param status_detail [String] Provides details in case of failure.

          # Reflects how command ended.
          #
          # @see Telnyx::Models::CallPlaybackEndedWebhookEvent::Data::Payload#status
          module Status
            extend Telnyx::Internal::Type::Enum

            FILE_NOT_FOUND = :file_not_found
            CALL_HANGUP = :call_hangup
            UNKNOWN = :unknown
            CANCELLED = :cancelled
            CANCELLED_AMD = :cancelled_amd
            COMPLETED = :completed
            FAILED = :failed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::CallPlaybackEndedWebhookEvent::Data#record_type
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
