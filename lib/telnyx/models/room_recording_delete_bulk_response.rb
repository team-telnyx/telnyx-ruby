# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RoomRecordings#delete_bulk
    class RoomRecordingDeleteBulkResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::RoomRecordingDeleteBulkResponse::Data, nil]
      optional :data, -> { Telnyx::Models::RoomRecordingDeleteBulkResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::RoomRecordingDeleteBulkResponse::Data]

      # @see Telnyx::Models::RoomRecordingDeleteBulkResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute room_recordings
        #   Amount of room recordings affected
        #
        #   @return [Integer, nil]
        optional :room_recordings, Integer

        # @!method initialize(room_recordings: nil)
        #   @param room_recordings [Integer] Amount of room recordings affected
      end
    end
  end
end
