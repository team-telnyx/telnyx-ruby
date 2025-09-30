# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::FqdnConnectionsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.fqdn_connections.create(connection_name: "string")

    assert_pattern do
      response => Telnyx::Models::FqdnConnectionCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::FqdnConnection | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.fqdn_connections.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::FqdnConnectionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::FqdnConnection | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.fqdn_connections.update("id")

    assert_pattern do
      response => Telnyx::Models::FqdnConnectionUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::FqdnConnection | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.fqdn_connections.list

    assert_pattern do
      response => Telnyx::Models::FqdnConnectionListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::FqdnConnection]) | nil,
        meta: Telnyx::ConnectionsPaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.fqdn_connections.delete("id")

    assert_pattern do
      response => Telnyx::Models::FqdnConnectionDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::FqdnConnection | nil
      }
    end
  end
end
