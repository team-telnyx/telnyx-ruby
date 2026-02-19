# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::FaxesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.faxes.create(connection_id: "234423", from: "+13125790015", to: "+13127367276")

    assert_pattern do
      response => Telnyx::Models::FaxCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Fax | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.faxes.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::FaxRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Fax | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.faxes.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Fax
    end

    assert_pattern do
      row => {
        id: String | nil,
        client_state: String | nil,
        connection_id: String | nil,
        created_at: Time | nil,
        direction: Telnyx::Fax::Direction | nil,
        from: String | nil,
        from_display_name: String | nil,
        media_name: String | nil,
        media_url: String | nil,
        preview_url: String | nil,
        quality: Telnyx::Fax::Quality | nil,
        record_type: Telnyx::Fax::RecordType | nil,
        status: Telnyx::Fax::Status | nil,
        store_media: Telnyx::Internal::Type::Boolean | nil,
        stored_media_url: String | nil,
        to: String | nil,
        updated_at: Time | nil,
        webhook_failover_url: String | nil,
        webhook_url: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.faxes.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end
end
