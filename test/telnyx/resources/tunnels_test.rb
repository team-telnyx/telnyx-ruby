# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::TunnelsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.tunnels.create(name: "chicago-dc")

    assert_pattern do
      response => Telnyx::Models::TunnelCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::TunnelWithToken | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.tunnels.retrieve("62d438d2-8a51-4c5e-9d0c-1f6b2a7e4c39")

    assert_pattern do
      response => Telnyx::Models::TunnelRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Tunnel | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.tunnels.list

    assert_pattern do
      response => Telnyx::Models::TunnelListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Tunnel]) | nil,
        meta: Telnyx::NetappsCursorPaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.tunnels.delete("62d438d2-8a51-4c5e-9d0c-1f6b2a7e4c39")

    assert_pattern do
      response => nil
    end
  end
end
