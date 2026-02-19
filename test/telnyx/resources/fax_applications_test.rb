# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::FaxApplicationsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.fax_applications.create(application_name: "fax-router", webhook_event_url: "https://example.com")

    assert_pattern do
      response => Telnyx::Models::FaxApplicationCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::FaxApplication | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.fax_applications.retrieve("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::FaxApplicationRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::FaxApplication | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.fax_applications.update(
        "1293384261075731499",
        application_name: "fax-router",
        webhook_event_url: "https://example.com"
      )

    assert_pattern do
      response => Telnyx::Models::FaxApplicationUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::FaxApplication | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.fax_applications.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::FaxApplication
    end

    assert_pattern do
      row => {
        id: String | nil,
        active: Telnyx::Internal::Type::Boolean | nil,
        anchorsite_override: Telnyx::AnchorsiteOverride | nil,
        application_name: String | nil,
        created_at: String | nil,
        inbound: Telnyx::FaxApplication::Inbound | nil,
        outbound: Telnyx::FaxApplication::Outbound | nil,
        record_type: String | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        updated_at: String | nil,
        webhook_event_failover_url: String | nil,
        webhook_event_url: String | nil,
        webhook_timeout_secs: Integer | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.fax_applications.delete("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::FaxApplicationDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::FaxApplication | nil
      }
    end
  end
end
