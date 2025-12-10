# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::CredentialConnectionsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.credential_connections.create(
        connection_name: "my name",
        password: "my123secure456password789",
        user_name: "myusername123"
      )

    assert_pattern do
      response => Telnyx::Models::CredentialConnectionCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::CredentialConnection | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.credential_connections.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::CredentialConnectionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::CredentialConnection | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.credential_connections.update("id")

    assert_pattern do
      response => Telnyx::Models::CredentialConnectionUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::CredentialConnection | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.credential_connections.list

    assert_pattern do
      response => Telnyx::Models::CredentialConnectionListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::CredentialConnection]) | nil,
        meta: Telnyx::ConnectionsPaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.credential_connections.delete("id")

    assert_pattern do
      response => Telnyx::Models::CredentialConnectionDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::CredentialConnection | nil
      }
    end
  end
end
