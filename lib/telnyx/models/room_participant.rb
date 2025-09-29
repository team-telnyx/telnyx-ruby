# frozen_string_literal: true

module Telnyx
  module Models
    class RoomParticipant < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   A unique identifier for the room participant.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute context
      #   Context provided to the given participant through the client SDK
      #
      #   @return [String, nil]
      optional :context, String

      # @!attribute joined_at
      #   ISO 8601 timestamp when the participant joined the session.
      #
      #   @return [Time, nil]
      optional :joined_at, Time

      # @!attribute left_at
      #   ISO 8601 timestamp when the participant left the session.
      #
      #   @return [Time, nil]
      optional :left_at, Time

      # @!attribute session_id
      #   Identify the room session that participant is part of.
      #
      #   @return [String, nil]
      optional :session_id, String

      # @!attribute updated_at
      #   ISO 8601 timestamp when the participant was updated.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      response_only do
        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String
      end

      # @!method initialize(id: nil, context: nil, joined_at: nil, left_at: nil, record_type: nil, session_id: nil, updated_at: nil)
      #   @param id [String] A unique identifier for the room participant.
      #
      #   @param context [String] Context provided to the given participant through the client SDK
      #
      #   @param joined_at [Time] ISO 8601 timestamp when the participant joined the session.
      #
      #   @param left_at [Time] ISO 8601 timestamp when the participant left the session.
      #
      #   @param record_type [String]
      #
      #   @param session_id [String] Identify the room session that participant is part of.
      #
      #   @param updated_at [Time] ISO 8601 timestamp when the participant was updated.
    end
  end
end
