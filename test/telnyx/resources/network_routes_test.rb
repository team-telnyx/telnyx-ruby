# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::NetworkRoutesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.network_routes.create(
        cidr: "10.20.0.0/16",
        network_id: "91446ee3-5b1c-4f0e-8d2a-6c7e9b0a1f24",
        next_hop: {id: "62d438d2-8a51-4c5e-9d0c-1f6b2a7e4c39", type: :tunnel}
      )

    assert_pattern do
      response => Telnyx::Models::NetworkRouteCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NetworkRoute | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.network_routes.retrieve("e8a2c5d0-3f7b-4a19-b6d2-9c1e0f8a7b53")

    assert_pattern do
      response => Telnyx::Models::NetworkRouteRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NetworkRoute | nil
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.network_routes.list(filter: {network_id: "91446ee3-5b1c-4f0e-8d2a-6c7e9b0a1f24"})

    assert_pattern do
      response => Telnyx::Models::NetworkRouteListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::NetworkRoute]) | nil,
        meta: Telnyx::NetappsCursorPaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.network_routes.delete("e8a2c5d0-3f7b-4a19-b6d2-9c1e0f8a7b53")

    assert_pattern do
      response => nil
    end
  end
end
