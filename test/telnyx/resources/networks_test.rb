# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::NetworksTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.networks.create(name: "test network")

    assert_pattern do
      response => Telnyx::Models::NetworkCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::NetworkCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.networks.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::NetworkRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::NetworkRetrieveResponse::Data | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @telnyx.networks.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58", name: "test network")

    assert_pattern do
      response => Telnyx::Models::NetworkUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::NetworkUpdateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.networks.list

    assert_pattern do
      response => Telnyx::Models::NetworkListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::NetworkListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.networks.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::NetworkDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::NetworkDeleteResponse::Data | nil
      }
    end
  end

  def test_list_interfaces
    skip("Prism tests are disabled")

    response = @telnyx.networks.list_interfaces("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::NetworkListInterfacesResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::NetworkListInterfacesResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
