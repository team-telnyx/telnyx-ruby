# frozen_string_literal: true

module Telnyx
  module Models
    class RecordingTranscription < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Uniquely identifies the recording transcription.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute created_at
      #   ISO 8601 formatted date indicating when the resource was created.
      #
      #   @return [String, nil]
      optional :created_at, String

      # @!attribute duration_millis
      #   The duration of the recording transcription in milliseconds.
      #
      #   @return [Integer, nil]
      optional :duration_millis, Integer

      # @!attribute record_type
      #
      #   @return [Symbol, Telnyx::Models::RecordingTranscription::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::RecordingTranscription::RecordType }

      # @!attribute recording_id
      #   Uniquely identifies the recording associated with this transcription.
      #
      #   @return [String, nil]
      optional :recording_id, String

      # @!attribute status
      #   The status of the recording transcription. Only `completed` has transcription
      #   text available.
      #
      #   @return [Symbol, Telnyx::Models::RecordingTranscription::Status, nil]
      optional :status, enum: -> { Telnyx::RecordingTranscription::Status }

      # @!attribute transcription_text
      #   The recording's transcribed text.
      #
      #   @return [String, nil]
      optional :transcription_text, String

      # @!attribute updated_at
      #   ISO 8601 formatted date indicating when the resource was updated.
      #
      #   @return [String, nil]
      optional :updated_at, String

      # @!method initialize(id: nil, created_at: nil, duration_millis: nil, record_type: nil, recording_id: nil, status: nil, transcription_text: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::RecordingTranscription} for more details.
      #
      #   @param id [String] Uniquely identifies the recording transcription.
      #
      #   @param created_at [String] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param duration_millis [Integer] The duration of the recording transcription in milliseconds.
      #
      #   @param record_type [Symbol, Telnyx::Models::RecordingTranscription::RecordType]
      #
      #   @param recording_id [String] Uniquely identifies the recording associated with this transcription.
      #
      #   @param status [Symbol, Telnyx::Models::RecordingTranscription::Status] The status of the recording transcription. Only `completed` has transcription te
      #
      #   @param transcription_text [String] The recording's transcribed text.
      #
      #   @param updated_at [String] ISO 8601 formatted date indicating when the resource was updated.

      # @see Telnyx::Models::RecordingTranscription#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        RECORDING_TRANSCRIPTION = :recording_transcription

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The status of the recording transcription. Only `completed` has transcription
      # text available.
      #
      # @see Telnyx::Models::RecordingTranscription#status
      module Status
        extend Telnyx::Internal::Type::Enum

        IN_PROGRESS = :"in-progress"
        COMPLETED = :completed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
