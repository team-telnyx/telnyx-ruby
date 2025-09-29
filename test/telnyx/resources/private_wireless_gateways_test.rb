# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::PrivateWirelessGatewaysTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.private_wireless_gateways.create(
        name: "My private wireless gateway",
        network_id: "6a09cdc3-8948-47f0-aa62-74ac943d6c58"
      )

    assert_pattern do
      response => Telnyx::Models::PrivateWirelessGatewayCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PrivateWirelessGateway | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.private_wireless_gateways.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::PrivateWirelessGatewayRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PrivateWirelessGateway | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.private_wireless_gateways.list

    assert_pattern do
      response => Telnyx::Models::PrivateWirelessGatewayListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PrivateWirelessGateway]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.private_wireless_gateways.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::PrivateWirelessGatewayDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PrivateWirelessGateway | nil
      }
    end
  end
end
