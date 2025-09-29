# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::WebhookDeliveriesTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.webhook_deliveries.retrieve("C9C0797E-901D-4349-A33C-C2C8F31A92C2")

    assert_pattern do
      response => Telnyx::Models::WebhookDeliveryRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::WebhookDeliveryRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.webhook_deliveries.list

    assert_pattern do
      response => Telnyx::Models::WebhookDeliveryListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::WebhookDeliveryListResponse::Data]) | nil,
        meta: Telnyx::Models::WebhookDeliveryListResponse::Meta | nil
      }
    end
  end
end
