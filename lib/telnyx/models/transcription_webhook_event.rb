# frozen_string_literal: true

module Telnyx
  module Models
    class TranscriptionWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::TranscriptionWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::TranscriptionWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::TranscriptionWebhookEvent::Data]

      # @see Telnyx::Models::TranscriptionWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the type of resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::TranscriptionWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::TranscriptionWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 datetime of when the event occurred.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::TranscriptionWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::TranscriptionWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::TranscriptionWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::TranscriptionWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   @param id [String] Identifies the type of resource.
        #
        #   @param event_type [Symbol, Telnyx::Models::TranscriptionWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
        #
        #   @param payload [Telnyx::Models::TranscriptionWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::TranscriptionWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::TranscriptionWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          CALL_TRANSCRIPTION = :"call.transcription"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::TranscriptionWebhookEvent::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute call_control_id
          #   Unique identifier and token for controlling the call.
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
          #   Use this field to add state to every subsequent webhook. It must be a valid
          #   Base-64 encoded string.
          #
          #   @return [String, nil]
          optional :client_state, String

          # @!attribute connection_id
          #   Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @return [String, nil]
          optional :connection_id, String

          # @!attribute transcription_data
          #
          #   @return [Telnyx::Models::TranscriptionWebhookEvent::Data::Payload::TranscriptionData, nil]
          optional :transcription_data, -> { Telnyx::TranscriptionWebhookEvent::Data::Payload::TranscriptionData }

          # @!method initialize(call_control_id: nil, call_leg_id: nil, call_session_id: nil, client_state: nil, connection_id: nil, transcription_data: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::TranscriptionWebhookEvent::Data::Payload} for more details.
          #
          #   @param call_control_id [String] Unique identifier and token for controlling the call.
          #
          #   @param call_leg_id [String] ID that is unique to the call and can be used to correlate webhook events.
          #
          #   @param call_session_id [String] ID that is unique to the call session and can be used to correlate webhook event
          #
          #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
          #
          #   @param connection_id [String] Call Control App ID (formerly Telnyx connection ID) used in the call.
          #
          #   @param transcription_data [Telnyx::Models::TranscriptionWebhookEvent::Data::Payload::TranscriptionData]

          # @see Telnyx::Models::TranscriptionWebhookEvent::Data::Payload#transcription_data
          class TranscriptionData < Telnyx::Internal::Type::BaseModel
            # @!attribute confidence
            #   Speech recognition confidence level.
            #
            #   @return [Float, nil]
            optional :confidence, Float

            # @!attribute is_final
            #   When false, it means that this is an interim result.
            #
            #   @return [Boolean, nil]
            optional :is_final, Telnyx::Internal::Type::Boolean

            # @!attribute transcript
            #   Recognized text.
            #
            #   @return [String, nil]
            optional :transcript, String

            # @!attribute transcription_track
            #   Indicates which leg of the call has been transcribed. This is only available
            #   when `transcription_engine` is set to `B`.
            #
            #   @return [Symbol, Telnyx::Models::TranscriptionWebhookEvent::Data::Payload::TranscriptionData::TranscriptionTrack, nil]
            optional :transcription_track,
                     enum: -> { Telnyx::TranscriptionWebhookEvent::Data::Payload::TranscriptionData::TranscriptionTrack }

            # @!method initialize(confidence: nil, is_final: nil, transcript: nil, transcription_track: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::TranscriptionWebhookEvent::Data::Payload::TranscriptionData}
            #   for more details.
            #
            #   @param confidence [Float] Speech recognition confidence level.
            #
            #   @param is_final [Boolean] When false, it means that this is an interim result.
            #
            #   @param transcript [String] Recognized text.
            #
            #   @param transcription_track [Symbol, Telnyx::Models::TranscriptionWebhookEvent::Data::Payload::TranscriptionData::TranscriptionTrack] Indicates which leg of the call has been transcribed. This is only available whe

            # Indicates which leg of the call has been transcribed. This is only available
            # when `transcription_engine` is set to `B`.
            #
            # @see Telnyx::Models::TranscriptionWebhookEvent::Data::Payload::TranscriptionData#transcription_track
            module TranscriptionTrack
              extend Telnyx::Internal::Type::Enum

              INBOUND = :inbound
              OUTBOUND = :outbound

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::TranscriptionWebhookEvent::Data#record_type
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
