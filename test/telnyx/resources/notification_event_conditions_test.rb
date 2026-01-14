# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::NotificationEventConditionsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.notification_event_conditions.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::NotificationEventConditionListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        allow_multiple_channels: Telnyx::Internal::Type::Boolean | nil,
        associated_record_type: Telnyx::Models::NotificationEventConditionListResponse::AssociatedRecordType | nil,
        asynchronous: Telnyx::Internal::Type::Boolean | nil,
        created_at: Time | nil,
        description: String | nil,
        enabled: Telnyx::Internal::Type::Boolean | nil,
        name: String | nil,
        notification_event_id: String | nil,
        parameters: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::NotificationEventConditionListResponse::Parameter]) | nil,
        supported_channels: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        updated_at: Time | nil
      }
    end
  end
end
