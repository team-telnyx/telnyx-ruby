# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::SimCardsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCard | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCard | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.list

    assert_pattern do
      response => Telnyx::Models::SimCardListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::SimpleSimCard]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCard | nil
      }
    end
  end

  def test_get_activation_code
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.get_activation_code("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardGetActivationCodeResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::SimCardGetActivationCodeResponse::Data | nil
      }
    end
  end

  def test_get_device_details
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.get_device_details("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardGetDeviceDetailsResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::SimCardGetDeviceDetailsResponse::Data | nil
      }
    end
  end

  def test_get_public_ip
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.get_public_ip("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardGetPublicIPResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::SimCardGetPublicIPResponse::Data | nil
      }
    end
  end

  def test_list_wireless_connectivity_logs
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.list_wireless_connectivity_logs("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardListWirelessConnectivityLogsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::SimCardListWirelessConnectivityLogsResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
