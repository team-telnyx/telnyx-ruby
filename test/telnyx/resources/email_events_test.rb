# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::EmailEventsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.email_events.list

    assert_pattern do
      response => Telnyx::Models::EmailEventListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::EmailEventListResponse::Data]),
        meta: Telnyx::Models::EmailEventListResponse::Meta
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
