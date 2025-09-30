# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::NotificationEventConditionsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.notification_event_conditions.list

    assert_pattern do
      response => Telnyx::Models::NotificationEventConditionListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::NotificationEventConditionListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
