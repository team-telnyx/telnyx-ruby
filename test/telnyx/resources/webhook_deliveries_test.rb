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
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::WebhookDeliveryListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        attempts: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::WebhookDeliveryListResponse::Attempt]) | nil,
        finished_at: Time | nil,
        record_type: String | nil,
        started_at: Time | nil,
        status: Telnyx::Models::WebhookDeliveryListResponse::Status | nil,
        user_id: String | nil,
        webhook: Telnyx::Models::WebhookDeliveryListResponse::Webhook | nil
      }
    end
  end
end
