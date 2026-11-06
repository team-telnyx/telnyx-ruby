# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::EmailEventsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.email_events.list

    assert_pattern do
      response => Telnyx::Internal::EmailEventsCursorPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::EmailEventListResponse
    end

    assert_pattern do
      row => {
        id: String,
        canonical_event_type: String,
        event_type: String,
        occurred_at: Time,
        payload: Telnyx::Models::EmailEventListResponse::Payload,
        recipient_id: String | nil
      }
    end
  end

  def test_retrieve_stats
    skip("Mock server tests are disabled")

    response = @telnyx.email_events.retrieve_stats

    assert_pattern do
      response => Telnyx::Models::EmailEventRetrieveStatsResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::EmailEventRetrieveStatsResponse::Data
      }
    end
  end
end
