# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::OAuthClientsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.oauth_clients.create(
        allowed_grant_types: [:client_credentials],
        allowed_scopes: ["admin"],
        client_type: :public,
        name: "My OAuth client"
      )

    assert_pattern do
      response => Telnyx::Models::OAuthClientCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::OAuthClient | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.oauth_clients.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::OAuthClientRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::OAuthClient | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.oauth_clients.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::OAuthClientUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::OAuthClient | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.oauth_clients.list

    assert_pattern do
      response => Telnyx::Models::OAuthClientListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::OAuthClient]) | nil,
        meta: Telnyx::Models::OAuthClientListResponse::Meta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.oauth_clients.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end
end
