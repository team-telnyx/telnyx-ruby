# frozen_string_literal: true

module Telnyx
  module Models
    class CallRecordingSavedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallRecordingSavedWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::CallRecordingSavedWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallRecordingSavedWebhookEvent::Data]

      # @see Telnyx::Models::CallRecordingSavedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the type of resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::CallRecordingSavedWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::CallRecordingSavedWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 datetime of when the event occurred.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::CallRecordingSavedWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::CallRecordingSavedWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::CallRecordingSavedWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::CallRecordingSavedWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   @param id [String] Identifies the type of resource.
        #
        #   @param event_type [Symbol, Telnyx::Models::CallRecordingSavedWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
        #
        #   @param payload [Telnyx::Models::CallRecordingSavedWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::CallRecordingSavedWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::CallRecordingSavedWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          CALL_RECORDING_SAVED = :"call.recording.saved"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::CallRecordingSavedWebhookEvent::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
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

          # @!attribute channels
          #   Whether recording was recorded in `single` or `dual` channel.
          #
          #   @return [Symbol, Telnyx::Models::CallRecordingSavedWebhookEvent::Data::Payload::Channels, nil]
          optional :channels, enum: -> { Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::Channels }

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

          # @!attribute public_recording_urls
          #   Recording URLs in requested format. The URL is valid for as long as the file
          #   exists. For security purposes, this feature is activated on a per request basis.
          #   Please contact customer support with your Account ID to request activation.
          #
          #   @return [Telnyx::Models::CallRecordingSavedWebhookEvent::Data::Payload::PublicRecordingURLs, nil]
          optional :public_recording_urls,
                   -> { Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::PublicRecordingURLs }

          # @!attribute recording_ended_at
          #   ISO 8601 datetime of when recording ended.
          #
          #   @return [Time, nil]
          optional :recording_ended_at, Time

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
          #   @return [Telnyx::Models::CallRecordingSavedWebhookEvent::Data::Payload::RecordingURLs, nil]
          optional :recording_urls, -> { Telnyx::CallRecordingSavedWebhookEvent::Data::Payload::RecordingURLs }

          # @!method initialize(call_leg_id: nil, call_session_id: nil, channels: nil, client_state: nil, connection_id: nil, public_recording_urls: nil, recording_ended_at: nil, recording_started_at: nil, recording_urls: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::CallRecordingSavedWebhookEvent::Data::Payload} for more
          #   details.
          #
          #   @param call_leg_id [String] ID that is unique to the call and can be used to correlate webhook events.
          #
          #   @param call_session_id [String] ID that is unique to the call session and can be used to correlate webhook event
          #
          #   @param channels [Symbol, Telnyx::Models::CallRecordingSavedWebhookEvent::Data::Payload::Channels] Whether recording was recorded in `single` or `dual` channel.
          #
          #   @param client_state [String] State received from a command.
          #
          #   @param connection_id [String] Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @param public_recording_urls [Telnyx::Models::CallRecordingSavedWebhookEvent::Data::Payload::PublicRecordingURLs] Recording URLs in requested format. The URL is valid for as long as the file exi
          #
          #   @param recording_ended_at [Time] ISO 8601 datetime of when recording ended.
          #
          #   @param recording_started_at [Time] ISO 8601 datetime of when recording started.
          #
          #   @param recording_urls [Telnyx::Models::CallRecordingSavedWebhookEvent::Data::Payload::RecordingURLs] Recording URLs in requested format. These URLs are valid for 10 minutes. After 1

          # Whether recording was recorded in `single` or `dual` channel.
          #
          # @see Telnyx::Models::CallRecordingSavedWebhookEvent::Data::Payload#channels
          module Channels
            extend Telnyx::Internal::Type::Enum

            SINGLE = :single
            DUAL = :dual

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::CallRecordingSavedWebhookEvent::Data::Payload#public_recording_urls
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

          # @see Telnyx::Models::CallRecordingSavedWebhookEvent::Data::Payload#recording_urls
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
        # @see Telnyx::Models::CallRecordingSavedWebhookEvent::Data#record_type
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
