# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MeetingSessions#list
    class MeetingSessionListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::MeetingSession>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MeetingSession] }

      # @!method initialize(data:)
      #   @param data [Array<Telnyx::Models::MeetingSession>]
    end
  end
end
