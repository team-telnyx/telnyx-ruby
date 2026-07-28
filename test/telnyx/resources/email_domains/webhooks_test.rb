# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::EmailDomains::WebhooksTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_domains.webhooks.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        events: [:"email.sent", :"email.delivered", :"email.bounced"],
        url: "https://example.com/webhooks/email"
      )

    assert_pattern do
      response => Telnyx::EmailDomains::EmailWebhookResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailDomains::EmailWebhook
      }
    end
  end

  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_domains.webhooks.retrieve(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        domain_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::EmailDomains::EmailWebhookResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailDomains::EmailWebhook
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_domains.webhooks.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        domain_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::EmailDomains::EmailWebhookResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailDomains::EmailWebhook
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.email_domains.webhooks.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::EmailDomains::EmailWebhook
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        domain_id: String,
        events: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::EmailDomains::EmailWebhookEvent]),
        record_type: Telnyx::EmailDomains::EmailWebhook::RecordType,
        updated_at: Time,
        url: String
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_domains.webhooks.delete(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        domain_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::EmailDomains::EmailWebhookResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailDomains::EmailWebhook
      }
    end
  end
end
