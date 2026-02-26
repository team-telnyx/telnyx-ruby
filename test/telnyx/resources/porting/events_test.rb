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
  end

  def test_republish
    skip("Mock server tests are disabled")

    response = @telnyx.porting.events.republish("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end
end
