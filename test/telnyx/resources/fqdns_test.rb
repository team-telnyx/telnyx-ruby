# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::FqdnsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.fqdns.create(connection_id: "1516447646313612565", dns_record_type: "a", fqdn: "example.com")

    assert_pattern do
      response => Telnyx::Models::FqdnCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Fqdn | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.fqdns.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::FqdnRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Fqdn | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.fqdns.update("id")

    assert_pattern do
      response => Telnyx::Models::FqdnUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Fqdn | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.fqdns.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Fqdn
    end

    assert_pattern do
      row => {
        id: String | nil,
        connection_id: String | nil,
        created_at: String | nil,
        dns_record_type: String | nil,
        fqdn: String | nil,
        port: Integer | nil,
        record_type: String | nil,
        updated_at: String | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.fqdns.delete("id")

    assert_pattern do
      response => Telnyx::Models::FqdnDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Fqdn | nil
      }
    end
  end
end
