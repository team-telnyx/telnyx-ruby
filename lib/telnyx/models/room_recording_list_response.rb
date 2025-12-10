# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RoomRecordings#list
    class RoomRecordingListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   A unique identifier for the room recording.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute codec
      #   Shows the codec used for the room recording.
      #
      #   @return [String, nil]
      optional :codec, String

      # @!attribute completed_at
      #   ISO 8601 timestamp when the room recording has completed.
      #
      #   @return [Time, nil]
      optional :completed_at, Time

      # @!attribute created_at
      #   ISO 8601 timestamp when the room recording was created.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute download_url
      #   Url to download the recording.
      #
      #   @return [String, nil]
      optional :download_url, String

      # @!attribute duration_secs
      #   Shows the room recording duration in seconds.
      #
      #   @return [Integer, nil]
      optional :duration_secs, Integer

      # @!attribute ended_at
      #   ISO 8601 timestamp when the room recording has ended.
      #
      #   @return [Time, nil]
      optional :ended_at, Time

      # @!attribute participant_id
      #   Identify the room participant associated with the room recording.
      #
      #   @return [String, nil]
      optional :participant_id, String

      # @!attribute room_id
      #   Identify the room associated with the room recording.
      #
      #   @return [String, nil]
      optional :room_id, String

      # @!attribute session_id
      #   Identify the room session associated with the room recording.
      #
      #   @return [String, nil]
      optional :session_id, String

      # @!attribute size_mb
      #   Shows the room recording size in MB.
      #
      #   @return [Float, nil]
      optional :size_mb, Float

      # @!attribute started_at
      #   ISO 8601 timestamp when the room recording has stated.
      #
      #   @return [Time, nil]
      optional :started_at, Time

      # @!attribute status
      #   Shows the room recording status.
      #
      #   @return [Symbol, Telnyx::Models::RoomRecordingListResponse::Status, nil]
      optional :status, enum: -> { Telnyx::Models::RoomRecordingListResponse::Status }

      # @!attribute type
      #   Shows the room recording type.
      #
      #   @return [Symbol, Telnyx::Models::RoomRecordingListResponse::Type, nil]
      optional :type, enum: -> { Telnyx::Models::RoomRecordingListResponse::Type }

      # @!attribute updated_at
      #   ISO 8601 timestamp when the room recording was updated.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      response_only do
        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String
      end

      # @!method initialize(id: nil, codec: nil, completed_at: nil, created_at: nil, download_url: nil, duration_secs: nil, ended_at: nil, participant_id: nil, record_type: nil, room_id: nil, session_id: nil, size_mb: nil, started_at: nil, status: nil, type: nil, updated_at: nil)
      #   @param id [String] A unique identifier for the room recording.
      #
      #   @param codec [String] Shows the codec used for the room recording.
      #
      #   @param completed_at [Time] ISO 8601 timestamp when the room recording has completed.
      #
      #   @param created_at [Time] ISO 8601 timestamp when the room recording was created.
      #
      #   @param download_url [String] Url to download the recording.
      #
      #   @param duration_secs [Integer] Shows the room recording duration in seconds.
      #
      #   @param ended_at [Time] ISO 8601 timestamp when the room recording has ended.
      #
      #   @param participant_id [String] Identify the room participant associated with the room recording.
      #
      #   @param record_type [String]
      #
      #   @param room_id [String] Identify the room associated with the room recording.
      #
      #   @param session_id [String] Identify the room session associated with the room recording.
      #
      #   @param size_mb [Float] Shows the room recording size in MB.
      #
      #   @param started_at [Time] ISO 8601 timestamp when the room recording has stated.
      #
      #   @param status [Symbol, Telnyx::Models::RoomRecordingListResponse::Status] Shows the room recording status.
      #
      #   @param type [Symbol, Telnyx::Models::RoomRecordingListResponse::Type] Shows the room recording type.
      #
      #   @param updated_at [Time] ISO 8601 timestamp when the room recording was updated.

      # Shows the room recording status.
      #
      # @see Telnyx::Models::RoomRecordingListResponse#status
      module Status
        extend Telnyx::Internal::Type::Enum

        COMPLETED = :completed
        PROCESSING = :processing

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Shows the room recording type.
      #
      # @see Telnyx::Models::RoomRecordingListResponse#type
      module Type
        extend Telnyx::Internal::Type::Enum

        AUDIO = :audio
        VIDEO = :video

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
