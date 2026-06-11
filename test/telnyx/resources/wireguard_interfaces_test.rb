# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::WireguardInterfacesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.wireguard_interfaces.create(region_code: "ashburn-va")

    assert_pattern do
      response => Telnyx::Models::WireguardInterfaceCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::WireguardInterfaceCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.wireguard_interfaces.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::WireguardInterfaceRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::WireguardInterfaceRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.wireguard_interfaces.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::WireguardInterfaceListResponse
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.wireguard_interfaces.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::WireguardInterfaceDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::WireguardInterfaceDeleteResponse::Data | nil
      }
    end
  end
end
