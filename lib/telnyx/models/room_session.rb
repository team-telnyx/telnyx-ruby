# frozen_string_literal: true

module Telnyx
  module Models
    class RoomSession < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   A unique identifier for the room session.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute active
      #   Shows if the room session is active or not.
      #
      #   @return [Boolean, nil]
      optional :active, Telnyx::Internal::Type::Boolean

      # @!attribute created_at
      #   ISO 8601 timestamp when the room session was created.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute ended_at
      #   ISO 8601 timestamp when the room session has ended.
      #
      #   @return [Time, nil]
      optional :ended_at, Time

      # @!attribute participants
      #
      #   @return [Array<Telnyx::Models::RoomParticipant>, nil]
      optional :participants, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::RoomParticipant] }

      # @!attribute room_id
      #   Identify the room hosting that room session.
      #
      #   @return [String, nil]
      optional :room_id, String

      # @!attribute updated_at
      #   ISO 8601 timestamp when the room session was updated.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      response_only do
        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String
      end

      # @!method initialize(id: nil, active: nil, created_at: nil, ended_at: nil, participants: nil, record_type: nil, room_id: nil, updated_at: nil)
      #   @param id [String] A unique identifier for the room session.
      #
      #   @param active [Boolean] Shows if the room session is active or not.
      #
      #   @param created_at [Time] ISO 8601 timestamp when the room session was created.
      #
      #   @param ended_at [Time] ISO 8601 timestamp when the room session has ended.
      #
      #   @param participants [Array<Telnyx::Models::RoomParticipant>]
      #
      #   @param record_type [String]
      #
      #   @param room_id [String] Identify the room hosting that room session.
      #
      #   @param updated_at [Time] ISO 8601 timestamp when the room session was updated.
    end
  end
end
