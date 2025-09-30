# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::WireguardPeersTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.wireguard_peers.create(wireguard_interface_id: "6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::WireguardPeerCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::WireguardPeerCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.wireguard_peers.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::WireguardPeerRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::WireguardPeerRetrieveResponse::Data | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.wireguard_peers.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::WireguardPeerUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::WireguardPeerUpdateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.wireguard_peers.list

    assert_pattern do
      response => Telnyx::Models::WireguardPeerListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::WireguardPeerListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.wireguard_peers.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::WireguardPeerDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::WireguardPeerDeleteResponse::Data | nil
      }
    end
  end

  def test_retrieve_config
    skip("Prism tests are disabled")

    response = @telnyx.wireguard_peers.retrieve_config("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => String
    end
  end
end
