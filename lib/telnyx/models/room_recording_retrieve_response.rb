# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RoomRecordings#retrieve
    class RoomRecordingRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::RoomRecording, nil]
      optional :data, -> { Telnyx::RoomRecording }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::RoomRecording]
    end
  end
end
