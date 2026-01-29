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
      case row
      in Telnyx::Models::Portouts::EventListResponse::WebhookPortoutStatusChanged
      in Telnyx::Models::Portouts::EventListResponse::WebhookPortoutNewComment
      in Telnyx::Models::Portouts::EventListResponse::WebhookPortoutFocDateChanged
      end
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
