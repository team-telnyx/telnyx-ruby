# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::IPConnectionsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.ip_connections.create

    assert_pattern do
      response => Telnyx::Models::IPConnectionCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::IPConnection | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.ip_connections.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::IPConnectionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::IPConnection | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.ip_connections.update("id")

    assert_pattern do
      response => Telnyx::Models::IPConnectionUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::IPConnection | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.ip_connections.list

    assert_pattern do
      response => Telnyx::Models::IPConnectionListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::IPConnection]) | nil,
        meta: Telnyx::ConnectionsPaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.ip_connections.delete("id")

    assert_pattern do
      response => Telnyx::Models::IPConnectionDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::IPConnection | nil
      }
    end
  end
end
