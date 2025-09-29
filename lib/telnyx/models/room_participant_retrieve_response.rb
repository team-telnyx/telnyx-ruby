# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RoomParticipants#retrieve
    class RoomParticipantRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::RoomParticipant, nil]
      optional :data, -> { Telnyx::RoomParticipant }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::RoomParticipant]
    end
  end
end
