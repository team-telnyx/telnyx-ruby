# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::NotificationEventsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.notification_events.list

    assert_pattern do
      response => Telnyx::Models::NotificationEventListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::NotificationEventListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
