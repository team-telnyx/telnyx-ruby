# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Recordings#list
    class RecordingResponseData < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Uniquely identifies the recording.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute call_control_id
      #   Unique identifier and token for controlling the call.
      #
      #   @return [String, nil]
      optional :call_control_id, String

      # @!attribute call_leg_id
      #   ID unique to the call leg (used to correlate webhook events).
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
      #   When `dual`, the final audio file has the first leg on channel A, and the rest
      #   on channel B.
      #
      #   @return [Symbol, Telnyx::Models::RecordingResponseData::Channels, nil]
      optional :channels, enum: -> { Telnyx::RecordingResponseData::Channels }

      # @!attribute conference_id
      #   Uniquely identifies the conference.
      #
      #   @return [String, nil]
      optional :conference_id, String

      # @!attribute created_at
      #   ISO 8601 formatted date indicating when the resource was created.
      #
      #   @return [String, nil]
      optional :created_at, String

      # @!attribute download_urls
      #   Links to download the recording files.
      #
      #   @return [Telnyx::Models::RecordingResponseData::DownloadURLs, nil]
      optional :download_urls, -> { Telnyx::RecordingResponseData::DownloadURLs }

      # @!attribute duration_millis
      #   The duration of the recording in milliseconds.
      #
      #   @return [Integer, nil]
      optional :duration_millis, Integer

      # @!attribute record_type
      #
      #   @return [Symbol, Telnyx::Models::RecordingResponseData::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::RecordingResponseData::RecordType }

      # @!attribute recording_ended_at
      #   ISO 8601 formatted date of when the recording ended.
      #
      #   @return [String, nil]
      optional :recording_ended_at, String

      # @!attribute recording_started_at
      #   ISO 8601 formatted date of when the recording started.
      #
      #   @return [String, nil]
      optional :recording_started_at, String

      # @!attribute source
      #   The kind of event that led to this recording being created.
      #
      #   @return [Symbol, Telnyx::Models::RecordingResponseData::Source, nil]
      optional :source, enum: -> { Telnyx::RecordingResponseData::Source }

      # @!attribute status
      #   The status of the recording. Only `completed` recordings are currently
      #   supported.
      #
      #   @return [Symbol, Telnyx::Models::RecordingResponseData::Status, nil]
      optional :status, enum: -> { Telnyx::RecordingResponseData::Status }

      # @!attribute updated_at
      #   ISO 8601 formatted date indicating when the resource was updated.
      #
      #   @return [String, nil]
      optional :updated_at, String

      # @!method initialize(id: nil, call_control_id: nil, call_leg_id: nil, call_session_id: nil, channels: nil, conference_id: nil, created_at: nil, download_urls: nil, duration_millis: nil, record_type: nil, recording_ended_at: nil, recording_started_at: nil, source: nil, status: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::RecordingResponseData} for more details.
      #
      #   @param id [String] Uniquely identifies the recording.
      #
      #   @param call_control_id [String] Unique identifier and token for controlling the call.
      #
      #   @param call_leg_id [String] ID unique to the call leg (used to correlate webhook events).
      #
      #   @param call_session_id [String] ID that is unique to the call session and can be used to correlate webhook event
      #
      #   @param channels [Symbol, Telnyx::Models::RecordingResponseData::Channels] When `dual`, the final audio file has the first leg on channel A, and the rest o
      #
      #   @param conference_id [String] Uniquely identifies the conference.
      #
      #   @param created_at [String] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param download_urls [Telnyx::Models::RecordingResponseData::DownloadURLs] Links to download the recording files.
      #
      #   @param duration_millis [Integer] The duration of the recording in milliseconds.
      #
      #   @param record_type [Symbol, Telnyx::Models::RecordingResponseData::RecordType]
      #
      #   @param recording_ended_at [String] ISO 8601 formatted date of when the recording ended.
      #
      #   @param recording_started_at [String] ISO 8601 formatted date of when the recording started.
      #
      #   @param source [Symbol, Telnyx::Models::RecordingResponseData::Source] The kind of event that led to this recording being created.
      #
      #   @param status [Symbol, Telnyx::Models::RecordingResponseData::Status] The status of the recording. Only `completed` recordings are currently supported
      #
      #   @param updated_at [String] ISO 8601 formatted date indicating when the resource was updated.

      # When `dual`, the final audio file has the first leg on channel A, and the rest
      # on channel B.
      #
      # @see Telnyx::Models::RecordingResponseData#channels
      module Channels
        extend Telnyx::Internal::Type::Enum

        SINGLE = :single
        DUAL = :dual

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::RecordingResponseData#download_urls
      class DownloadURLs < Telnyx::Internal::Type::BaseModel
        # @!attribute mp3
        #   Link to download the recording in mp3 format.
        #
        #   @return [String, nil]
        optional :mp3, String

        # @!attribute wav
        #   Link to download the recording in wav format.
        #
        #   @return [String, nil]
        optional :wav, String

        # @!method initialize(mp3: nil, wav: nil)
        #   Links to download the recording files.
        #
        #   @param mp3 [String] Link to download the recording in mp3 format.
        #
        #   @param wav [String] Link to download the recording in wav format.
      end

      # @see Telnyx::Models::RecordingResponseData#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        RECORDING = :recording

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The kind of event that led to this recording being created.
      #
      # @see Telnyx::Models::RecordingResponseData#source
      module Source
        extend Telnyx::Internal::Type::Enum

        CONFERENCE = :conference
        CALL = :call

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The status of the recording. Only `completed` recordings are currently
      # supported.
      #
      # @see Telnyx::Models::RecordingResponseData#status
      module Status
        extend Telnyx::Internal::Type::Enum

        COMPLETED = :completed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
