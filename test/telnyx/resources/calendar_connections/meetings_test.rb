# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::CalendarConnections::MeetingsTest < Telnyx::Test::ResourceTest
  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.calendar_connections.meetings.update("meeting_id", id: "id", bot_will_join: false)

    assert_pattern do
      response => Telnyx::Models::CalendarConnections::MeetingUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::CalendarConnections::CalendarMeeting
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.calendar_connections.meetings.list("id")

    assert_pattern do
      response => Telnyx::Models::CalendarConnections::MeetingListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::CalendarConnections::CalendarMeeting])
      }
    end
  end
end
