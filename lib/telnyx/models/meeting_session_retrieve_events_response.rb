# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MeetingSessions#retrieve_events
    class MeetingSessionRetrieveEventsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::MeetingSessionRetrieveEventsResponse::Data>]
      required :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MeetingSessionRetrieveEventsResponse::Data] }

      # @!method initialize(data:)
      #   @param data [Array<Telnyx::Models::MeetingSessionRetrieveEventsResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute occurred_at
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Hash{Symbol=>Object}]
        required :payload, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute seq
        #
        #   @return [Integer]
        required :seq, Integer

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!method initialize(occurred_at:, payload:, seq:, type:)
        #   @param occurred_at [Time]
        #   @param payload [Hash{Symbol=>Object}]
        #   @param seq [Integer]
        #   @param type [String]
      end
    end
  end
end
