# frozen_string_literal: true

module Telnyx
  module Models
    class ConferenceParticipantPlaybackEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConferenceParticipantPlaybackEndedWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::ConferenceParticipantPlaybackEndedWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ConferenceParticipantPlaybackEndedWebhookEvent::Data]

      # @see Telnyx::Models::ConferenceParticipantPlaybackEndedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the type of resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::ConferenceParticipantPlaybackEndedWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::ConferenceParticipantPlaybackEndedWebhookEvent::Data::EventType }

        # @!attribute payload
        #
        #   @return [Telnyx::Models::ConferenceParticipantPlaybackEndedWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::ConferenceParticipantPlaybackEndedWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::ConferenceParticipantPlaybackEndedWebhookEvent::Data::RecordType, nil]
        optional :record_type,
                 enum: -> { Telnyx::ConferenceParticipantPlaybackEndedWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, payload: nil, record_type: nil)
        #   @param id [String] Identifies the type of resource.
        #
        #   @param event_type [Symbol, Telnyx::Models::ConferenceParticipantPlaybackEndedWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param payload [Telnyx::Models::ConferenceParticipantPlaybackEndedWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::ConferenceParticipantPlaybackEndedWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::ConferenceParticipantPlaybackEndedWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          CONFERENCE_PARTICIPANT_PLAYBACK_ENDED = :"conference.participant.playback.ended"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::ConferenceParticipantPlaybackEndedWebhookEvent::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute call_control_id
          #   Participant's call ID used to issue commands via Call Control API.
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

          # @!attribute conference_id
          #   ID of the conference the text was spoken in.
          #
          #   @return [String, nil]
          optional :conference_id, String

          # @!attribute connection_id
          #   Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @return [String, nil]
          optional :connection_id, String

          # @!attribute creator_call_session_id
          #   ID that is unique to the call session that started the conference.
          #
          #   @return [String, nil]
          optional :creator_call_session_id, String

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

          # @!attribute occurred_at
          #   ISO 8601 datetime of when the event occurred.
          #
          #   @return [Time, nil]
          optional :occurred_at, Time

          # @!method initialize(call_control_id: nil, call_leg_id: nil, call_session_id: nil, client_state: nil, conference_id: nil, connection_id: nil, creator_call_session_id: nil, media_name: nil, media_url: nil, occurred_at: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::ConferenceParticipantPlaybackEndedWebhookEvent::Data::Payload}
          #   for more details.
          #
          #   @param call_control_id [String] Participant's call ID used to issue commands via Call Control API.
          #
          #   @param call_leg_id [String] ID that is unique to the call and can be used to correlate webhook events.
          #
          #   @param call_session_id [String] ID that is unique to the call session and can be used to correlate webhook event
          #
          #   @param client_state [String] State received from a command.
          #
          #   @param conference_id [String] ID of the conference the text was spoken in.
          #
          #   @param connection_id [String] Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @param creator_call_session_id [String] ID that is unique to the call session that started the conference.
          #
          #   @param media_name [String] The name of the audio media file being played back, if media_name has been used
          #
          #   @param media_url [String] The audio URL being played back, if audio_url has been used to start.
          #
          #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::ConferenceParticipantPlaybackEndedWebhookEvent::Data#record_type
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
