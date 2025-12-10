# frozen_string_literal: true

module Telnyx
  module Models
    class ConferenceRecordingSavedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::ConferenceRecordingSavedWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data]

      # @see Telnyx::Models::ConferenceRecordingSavedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the type of resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::ConferenceRecordingSavedWebhookEvent::Data::EventType }

        # @!attribute payload
        #
        #   @return [Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::ConferenceRecordingSavedWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, payload: nil, record_type: nil)
        #   @param id [String] Identifies the type of resource.
        #
        #   @param event_type [Symbol, Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param payload [Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          CONFERENCE_RECORDING_SAVED = :"conference.recording.saved"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute call_control_id
          #   Participant's call ID used to issue commands via Call Control API.
          #
          #   @return [String, nil]
          optional :call_control_id, String

          # @!attribute call_session_id
          #   ID that is unique to the call session and can be used to correlate webhook
          #   events. Call session is a group of related call legs that logically belong to
          #   the same phone call, e.g. an inbound and outbound leg of a transferred call.
          #
          #   @return [String, nil]
          optional :call_session_id, String

          # @!attribute channels
          #   Whether recording was recorded in `single` or `dual` channel.
          #
          #   @return [Symbol, Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data::Payload::Channels, nil]
          optional :channels, enum: -> { Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::Channels }

          # @!attribute client_state
          #   State received from a command.
          #
          #   @return [String, nil]
          optional :client_state, String

          # @!attribute conference_id
          #   ID of the conference that is being recorded.
          #
          #   @return [String, nil]
          optional :conference_id, String

          # @!attribute connection_id
          #   Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @return [String, nil]
          optional :connection_id, String

          # @!attribute file_format
          #   The audio file format used when storing the call recording. Can be either `mp3`
          #   or `wav`.
          #
          #   @return [Symbol, Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data::Payload::Format, nil]
          optional :file_format,
                   enum: -> { Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::Format },
                   api_name: :format

          # @!attribute public_recording_urls
          #   Recording URLs in requested format. The URL is valid for as long as the file
          #   exists. For security purposes, this feature is activated on a per request basis.
          #   Please contact customer support with your Account ID to request activation.
          #
          #   @return [Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data::Payload::PublicRecordingURLs, nil]
          optional :public_recording_urls,
                   -> { Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::PublicRecordingURLs }

          # @!attribute recording_ended_at
          #   ISO 8601 datetime of when recording ended.
          #
          #   @return [Time, nil]
          optional :recording_ended_at, Time

          # @!attribute recording_id
          #   ID of the conference recording.
          #
          #   @return [String, nil]
          optional :recording_id, String

          # @!attribute recording_started_at
          #   ISO 8601 datetime of when recording started.
          #
          #   @return [Time, nil]
          optional :recording_started_at, Time

          # @!attribute recording_urls
          #   Recording URLs in requested format. These URLs are valid for 10 minutes. After
          #   10 minutes, you may retrieve recordings via API using Reports -> Call Recordings
          #   documentation, or via Mission Control under Reporting -> Recordings.
          #
          #   @return [Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data::Payload::RecordingURLs, nil]
          optional :recording_urls,
                   -> { Telnyx::ConferenceRecordingSavedWebhookEvent::Data::Payload::RecordingURLs }

          # @!method initialize(call_control_id: nil, call_session_id: nil, channels: nil, client_state: nil, conference_id: nil, connection_id: nil, file_format: nil, public_recording_urls: nil, recording_ended_at: nil, recording_id: nil, recording_started_at: nil, recording_urls: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data::Payload} for more
          #   details.
          #
          #   @param call_control_id [String] Participant's call ID used to issue commands via Call Control API.
          #
          #   @param call_session_id [String] ID that is unique to the call session and can be used to correlate webhook event
          #
          #   @param channels [Symbol, Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data::Payload::Channels] Whether recording was recorded in `single` or `dual` channel.
          #
          #   @param client_state [String] State received from a command.
          #
          #   @param conference_id [String] ID of the conference that is being recorded.
          #
          #   @param connection_id [String] Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @param file_format [Symbol, Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data::Payload::Format] The audio file format used when storing the call recording. Can be either `mp3`
          #
          #   @param public_recording_urls [Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data::Payload::PublicRecordingURLs] Recording URLs in requested format. The URL is valid for as long as the file exi
          #
          #   @param recording_ended_at [Time] ISO 8601 datetime of when recording ended.
          #
          #   @param recording_id [String] ID of the conference recording.
          #
          #   @param recording_started_at [Time] ISO 8601 datetime of when recording started.
          #
          #   @param recording_urls [Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data::Payload::RecordingURLs] Recording URLs in requested format. These URLs are valid for 10 minutes. After 1

          # Whether recording was recorded in `single` or `dual` channel.
          #
          # @see Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data::Payload#channels
          module Channels
            extend Telnyx::Internal::Type::Enum

            SINGLE = :single
            DUAL = :dual

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The audio file format used when storing the call recording. Can be either `mp3`
          # or `wav`.
          #
          # @see Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data::Payload#file_format
          module Format
            extend Telnyx::Internal::Type::Enum

            WAV = :wav
            MP3 = :mp3

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data::Payload#public_recording_urls
          class PublicRecordingURLs < Telnyx::Internal::Type::BaseModel
            # @!attribute mp3
            #   Recording URL in requested `mp3` format.
            #
            #   @return [String, nil]
            optional :mp3, String, nil?: true

            # @!attribute wav
            #   Recording URL in requested `wav` format.
            #
            #   @return [String, nil]
            optional :wav, String, nil?: true

            # @!method initialize(mp3: nil, wav: nil)
            #   Recording URLs in requested format. The URL is valid for as long as the file
            #   exists. For security purposes, this feature is activated on a per request basis.
            #   Please contact customer support with your Account ID to request activation.
            #
            #   @param mp3 [String, nil] Recording URL in requested `mp3` format.
            #
            #   @param wav [String, nil] Recording URL in requested `wav` format.
          end

          # @see Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data::Payload#recording_urls
          class RecordingURLs < Telnyx::Internal::Type::BaseModel
            # @!attribute mp3
            #   Recording URL in requested `mp3` format.
            #
            #   @return [String, nil]
            optional :mp3, String, nil?: true

            # @!attribute wav
            #   Recording URL in requested `wav` format.
            #
            #   @return [String, nil]
            optional :wav, String, nil?: true

            # @!method initialize(mp3: nil, wav: nil)
            #   Recording URLs in requested format. These URLs are valid for 10 minutes. After
            #   10 minutes, you may retrieve recordings via API using Reports -> Call Recordings
            #   documentation, or via Mission Control under Reporting -> Recordings.
            #
            #   @param mp3 [String, nil] Recording URL in requested `mp3` format.
            #
            #   @param wav [String, nil] Recording URL in requested `wav` format.
          end
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::ConferenceRecordingSavedWebhookEvent::Data#record_type
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
