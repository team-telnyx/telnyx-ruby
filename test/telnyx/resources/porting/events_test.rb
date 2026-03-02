# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Porting::EventsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.porting.events.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Porting::EventRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Porting::EventRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.porting.events.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Porting::EventListResponse
    end

    assert_pattern do
      case row
      in Telnyx::Porting::PortingEventDeletedPayload
      in Telnyx::Porting::PortingEventMessagingChangedPayload
      in Telnyx::Porting::PortingEventStatusChangedEvent
      in Telnyx::Porting::PortingEventNewCommentEvent
      in Telnyx::Porting::PortingEventSplitEvent
      in Telnyx::Porting::PortingEventWithoutWebhook
      end
    end

    assert_pattern do
      case row
      in {
        event_type: :"porting_order.deleted",
        id: String | nil,
        available_notification_methods: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Porting::PortingEventDeletedPayload::AvailableNotificationMethod]) | nil,
        payload: Telnyx::Porting::PortingEventDeletedPayload::Payload | nil,
        payload_status: Telnyx::Porting::PortingEventDeletedPayload::PayloadStatus | nil,
        porting_order_id: String | nil
      }
      in {
        event_type: :"porting_order.messaging_changed",
        id: String | nil,
        available_notification_methods: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Porting::PortingEventMessagingChangedPayload::AvailableNotificationMethod]) | nil,
        created_at: Time | nil,
        payload: Telnyx::Porting::PortingEventMessagingChangedPayload::Payload | nil,
        payload_status: Telnyx::Porting::PortingEventMessagingChangedPayload::PayloadStatus | nil,
        porting_order_id: String | nil,
        record_type: String | nil,
        updated_at: Time | nil
      }
      in {
        event_type: :"porting_order.status_changed",
        id: String | nil,
        available_notification_methods: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Porting::PortingEventStatusChangedEvent::AvailableNotificationMethod]) | nil,
        created_at: Time | nil,
        payload: Telnyx::Porting::PortingEventStatusChangedEvent::Payload | nil,
        payload_status: Telnyx::Porting::PortingEventStatusChangedEvent::PayloadStatus | nil,
        porting_order_id: String | nil,
        record_type: String | nil,
        updated_at: Time | nil
      }
      in {
        event_type: :"porting_order.new_comment",
        id: String | nil,
        available_notification_methods: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Porting::PortingEventNewCommentEvent::AvailableNotificationMethod]) | nil,
        created_at: Time | nil,
        payload: Telnyx::Porting::PortingEventNewCommentEvent::Payload | nil,
        payload_status: Telnyx::Porting::PortingEventNewCommentEvent::PayloadStatus | nil,
        porting_order_id: String | nil,
        record_type: String | nil,
        updated_at: Time | nil
      }
      in {
        event_type: :"porting_order.split",
        id: String | nil,
        available_notification_methods: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Porting::PortingEventSplitEvent::AvailableNotificationMethod]) | nil,
        created_at: Time | nil,
        payload: Telnyx::Porting::PortingEventSplitEvent::Payload | nil,
        payload_status: Telnyx::Porting::PortingEventSplitEvent::PayloadStatus | nil,
        porting_order_id: String | nil,
        record_type: String | nil,
        updated_at: Time | nil
      }
      end
    end
  end

  def test_republish
    skip("Mock server tests are disabled")

    response = @telnyx.porting.events.republish("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end
end
