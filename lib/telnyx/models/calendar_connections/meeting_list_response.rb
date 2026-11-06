# frozen_string_literal: true

module Telnyx
  module Models
    module CalendarConnections
      # @see Telnyx::Resources::CalendarConnections::Meetings#list
      class MeetingListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::CalendarConnections::CalendarMeeting>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CalendarConnections::CalendarMeeting] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::CalendarConnections::CalendarMeeting>]
      end
    end
  end
end
