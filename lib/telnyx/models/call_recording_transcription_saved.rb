# frozen_string_literal: true

module Telnyx
  module Models
    class CallRecordingTranscriptionSaved < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifies the type of resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute event_type
      #   The type of event being delivered.
      #
      #   @return [Symbol, Telnyx::Models::CallRecordingTranscriptionSaved::EventType, nil]
      optional :event_type, enum: -> { Telnyx::CallRecordingTranscriptionSaved::EventType }

      # @!attribute occurred_at
      #   ISO 8601 datetime of when the event occurred.
      #
      #   @return [Time, nil]
      optional :occurred_at, Time

      # @!attribute payload
      #
      #   @return [Telnyx::Models::CallRecordingTranscriptionSaved::Payload, nil]
      optional :payload, -> { Telnyx::CallRecordingTranscriptionSaved::Payload }

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [Symbol, Telnyx::Models::CallRecordingTranscriptionSaved::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::CallRecordingTranscriptionSaved::RecordType }

      # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
      #   @param id [String] Identifies the type of resource.
      #
      #   @param event_type [Symbol, Telnyx::Models::CallRecordingTranscriptionSaved::EventType] The type of event being delivered.
      #
      #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
      #
      #   @param payload [Telnyx::Models::CallRecordingTranscriptionSaved::Payload]
      #
      #   @param record_type [Symbol, Telnyx::Models::CallRecordingTranscriptionSaved::RecordType] Identifies the type of the resource.

      # The type of event being delivered.
      #
      # @see Telnyx::Models::CallRecordingTranscriptionSaved#event_type
      module EventType
        extend Telnyx::Internal::Type::Enum

        CALL_RECORDING_TRANSCRIPTION_SAVED = :"call.recording.transcription.saved"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::CallRecordingTranscriptionSaved#payload
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

        # @!attribute calling_party_type
        #   The type of calling party connection.
        #
        #   @return [Symbol, Telnyx::Models::CallRecordingTranscriptionSaved::Payload::CallingPartyType, nil]
        optional :calling_party_type,
                 enum: -> { Telnyx::CallRecordingTranscriptionSaved::Payload::CallingPartyType }

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

        # @!attribute recording_id
        #   ID that is unique to the recording session and can be used to correlate webhook
        #   events.
        #
        #   @return [String, nil]
        optional :recording_id, String

        # @!attribute recording_transcription_id
        #   ID that is unique to the transcription process and can be used to correlate
        #   webhook events.
        #
        #   @return [String, nil]
        optional :recording_transcription_id, String

        # @!attribute status
        #   The transcription status.
        #
        #   @return [Symbol, Telnyx::Models::CallRecordingTranscriptionSaved::Payload::Status, nil]
        optional :status, enum: -> { Telnyx::CallRecordingTranscriptionSaved::Payload::Status }

        # @!attribute transcription_text
        #   The transcribed text
        #
        #   @return [String, nil]
        optional :transcription_text, String

        # @!method initialize(call_control_id: nil, call_leg_id: nil, call_session_id: nil, calling_party_type: nil, client_state: nil, connection_id: nil, recording_id: nil, recording_transcription_id: nil, status: nil, transcription_text: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::CallRecordingTranscriptionSaved::Payload} for more details.
        #
        #   @param call_control_id [String] Call ID used to issue commands via Call Control API.
        #
        #   @param call_leg_id [String] ID that is unique to the call and can be used to correlate webhook events.
        #
        #   @param call_session_id [String] ID that is unique to the call session and can be used to correlate webhook event
        #
        #   @param calling_party_type [Symbol, Telnyx::Models::CallRecordingTranscriptionSaved::Payload::CallingPartyType] The type of calling party connection.
        #
        #   @param client_state [String] State received from a command.
        #
        #   @param connection_id [String] Call Control App ID (formerly Telnyx connection ID) used in the call.
        #
        #   @param recording_id [String] ID that is unique to the recording session and can be used to correlate webhook
        #
        #   @param recording_transcription_id [String] ID that is unique to the transcription process and can be used to correlate webh
        #
        #   @param status [Symbol, Telnyx::Models::CallRecordingTranscriptionSaved::Payload::Status] The transcription status.
        #
        #   @param transcription_text [String] The transcribed text

        # The type of calling party connection.
        #
        # @see Telnyx::Models::CallRecordingTranscriptionSaved::Payload#calling_party_type
        module CallingPartyType
          extend Telnyx::Internal::Type::Enum

          PSTN = :pstn
          SIP = :sip

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The transcription status.
        #
        # @see Telnyx::Models::CallRecordingTranscriptionSaved::Payload#status
        module Status
          extend Telnyx::Internal::Type::Enum

          COMPLETED = :completed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Identifies the type of the resource.
      #
      # @see Telnyx::Models::CallRecordingTranscriptionSaved#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EVENT = :event

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
