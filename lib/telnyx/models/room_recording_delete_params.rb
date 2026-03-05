# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RoomRecordings#delete
    class RoomRecordingDeleteParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute room_recording_id
      #
      #   @return [String]
      required :room_recording_id, String

      # @!method initialize(room_recording_id:, request_options: {})
      #   @param room_recording_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
