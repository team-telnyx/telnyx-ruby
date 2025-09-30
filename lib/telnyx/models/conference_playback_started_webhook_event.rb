# frozen_string_literal: true

module Telnyx
  module Models
    class ConferencePlaybackStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConferencePlaybackStartedWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::ConferencePlaybackStartedWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ConferencePlaybackStartedWebhookEvent::Data]

      # @see Telnyx::Models::ConferencePlaybackStartedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the type of resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::ConferencePlaybackStartedWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::ConferencePlaybackStartedWebhookEvent::Data::EventType }

        # @!attribute payload
        #
        #   @return [Telnyx::Models::ConferencePlaybackStartedWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::ConferencePlaybackStartedWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::ConferencePlaybackStartedWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::ConferencePlaybackStartedWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, payload: nil, record_type: nil)
        #   @param id [String] Identifies the type of resource.
        #
        #   @param event_type [Symbol, Telnyx::Models::ConferencePlaybackStartedWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param payload [Telnyx::Models::ConferencePlaybackStartedWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::ConferencePlaybackStartedWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::ConferencePlaybackStartedWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          CONFERENCE_PLAYBACK_STARTED = :"conference.playback.started"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::ConferencePlaybackStartedWebhookEvent::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
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

          # @!method initialize(conference_id: nil, connection_id: nil, creator_call_session_id: nil, media_name: nil, media_url: nil, occurred_at: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::ConferencePlaybackStartedWebhookEvent::Data::Payload} for more
          #   details.
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
        # @see Telnyx::Models::ConferencePlaybackStartedWebhookEvent::Data#record_type
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
