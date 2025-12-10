# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Portouts::EventsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.portouts.events.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Portouts::EventRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Portouts::EventRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.portouts.events.list

    assert_pattern do
      response => Telnyx::Internal::DefaultPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Portouts::EventListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        available_notification_methods: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::Portouts::EventListResponse::AvailableNotificationMethod]) | nil,
        created_at: Time | nil,
        event_type: Telnyx::Models::Portouts::EventListResponse::EventType | nil,
        payload: Telnyx::Models::Portouts::EventListResponse::Payload | nil,
        payload_status: Telnyx::Models::Portouts::EventListResponse::PayloadStatus | nil,
        portout_id: String | nil,
        record_type: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_republish
    skip("Prism tests are disabled")

    response = @telnyx.portouts.events.republish("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end
end
