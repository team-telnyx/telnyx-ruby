# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::EmailEventsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.email_events.list

    assert_pattern do
      response => Telnyx::Internal::EmailCursorPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::EmailEventListResponse
    end

    assert_pattern do
      row => {
        id: String,
        email_id: String,
        occurred_at: Time,
        record_type: Telnyx::Models::EmailEventListResponse::RecordType,
        type: Telnyx::EmailEventType,
        email: Telnyx::Models::EmailEventListResponse::Email | nil,
        payload: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil
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
