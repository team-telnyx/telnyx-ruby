# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::MeetingBot::CalendarTest < Telnyx::Test::ResourceTest
  def test_retrieve_oauth_callback
    skip("Mock server tests are disabled")

    response = @telnyx.meeting_bot.calendar.retrieve_oauth_callback

    assert_pattern do
      response => String
    end
  end
end
