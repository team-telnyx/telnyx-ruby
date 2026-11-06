# frozen_string_literal: true

module Telnyx
  module Models
    module CalendarConnections
      # @see Telnyx::Resources::CalendarConnections::Meetings#update
      class MeetingUpdateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::CalendarConnections::CalendarMeeting]
        required :data, -> { Telnyx::CalendarConnections::CalendarMeeting }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::CalendarConnections::CalendarMeeting]
      end
    end
  end
end
