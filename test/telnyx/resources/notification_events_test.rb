# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::NotificationEventsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.notification_events.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::NotificationEventListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: Time | nil,
        enabled: Telnyx::Internal::Type::Boolean | nil,
        name: String | nil,
        notification_category: String | nil,
        updated_at: Time | nil
      }
    end
  end
end
