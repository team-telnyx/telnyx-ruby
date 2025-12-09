# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::WirelessBlocklistsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.wireless_blocklists.create(name: "My Wireless Blocklist", type: :country, values: %w[CA US])

    assert_pattern do
      response => Telnyx::Models::WirelessBlocklistCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::WirelessBlocklist | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.wireless_blocklists.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::WirelessBlocklistRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::WirelessBlocklist | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.wireless_blocklists.update

    assert_pattern do
      response => Telnyx::Models::WirelessBlocklistUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::WirelessBlocklist | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.wireless_blocklists.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::WirelessBlocklist
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: String | nil,
        name: String | nil,
        record_type: String | nil,
        type: Telnyx::WirelessBlocklist::Type | nil,
        updated_at: String | nil,
        values: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.wireless_blocklists.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::WirelessBlocklistDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::WirelessBlocklist | nil
      }
    end
  end
end
