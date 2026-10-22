# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::TailscaleSubnetRoutersTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.tailscale_subnet_routers.create(
        advertised_routes: ["172.27.0.0/24"],
        auth_key: "tskey-auth-k1AbCdEfGh2IjKlMnOpQrStUv",
        name: "tailnet-ashburn",
        network_id: "0de011ae-ee53-4df4-ba96-754728eb5aad",
        region_code: "ashburn-va"
      )

    assert_pattern do
      response => Telnyx::Models::TailscaleSubnetRouterCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::TailscaleSubnetRouter | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.tailscale_subnet_routers.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::TailscaleSubnetRouterRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::TailscaleSubnetRouter | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.tailscale_subnet_routers.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::TailscaleSubnetRouterUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::TailscaleSubnetRouter | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.tailscale_subnet_routers.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::TailscaleSubnetRouter
    end

    assert_pattern do
      row => {
        id: String | nil,
        advertised_routes: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        created_at: Time | nil,
        customer_address: String | nil,
        device_id: String | nil,
        name: String | nil,
        network_id: String | nil,
        record_type: String | nil,
        region_code: String | nil,
        status: Telnyx::TailscaleSubnetRouter::Status | nil,
        tailnet_name: String | nil,
        tailscale_ips: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.tailscale_subnet_routers.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::TailscaleSubnetRouterDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::TailscaleSubnetRouter | nil
      }
    end
  end
end
