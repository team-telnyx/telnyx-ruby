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
      response => Telnyx::Models::WirelessBlocklistListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::WirelessBlocklist]) | nil,
        meta: Telnyx::PaginationMeta | nil
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
