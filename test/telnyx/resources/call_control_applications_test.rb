# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::CallControlApplicationsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.call_control_applications.create(
        application_name: "call-router",
        webhook_event_url: "https://example.com"
      )

    assert_pattern do
      response => Telnyx::Models::CallControlApplicationCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::CallControlApplication | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.call_control_applications.retrieve("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::CallControlApplicationRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::CallControlApplication | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.call_control_applications.update(
        "1293384261075731499",
        application_name: "call-router",
        webhook_event_url: "https://example.com"
      )

    assert_pattern do
      response => Telnyx::Models::CallControlApplicationUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::CallControlApplication | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.call_control_applications.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::CallControlApplication
    end

    assert_pattern do
      row => {
        id: String | nil,
        active: Telnyx::Internal::Type::Boolean | nil,
        anchorsite_override: Telnyx::CallControlApplication::AnchorsiteOverride | nil,
        application_name: String | nil,
        call_cost_in_webhooks: Telnyx::Internal::Type::Boolean | nil,
        created_at: String | nil,
        dtmf_type: Telnyx::CallControlApplication::DtmfType | nil,
        first_command_timeout: Telnyx::Internal::Type::Boolean | nil,
        first_command_timeout_secs: Integer | nil,
        inbound: Telnyx::CallControlApplicationInbound | nil,
        outbound: Telnyx::CallControlApplicationOutbound | nil,
        record_type: Telnyx::CallControlApplication::RecordType | nil,
        redact_dtmf_debug_logging: Telnyx::Internal::Type::Boolean | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        updated_at: String | nil,
        webhook_api_version: Telnyx::CallControlApplication::WebhookAPIVersion | nil,
        webhook_event_failover_url: String | nil,
        webhook_event_url: String | nil,
        webhook_timeout_secs: Integer | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.call_control_applications.delete("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::CallControlApplicationDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::CallControlApplication | nil
      }
    end
  end
end
