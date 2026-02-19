# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::OAuthClientsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

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
    skip("Mock server tests are disabled")

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
    skip("Mock server tests are disabled")

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
    skip("Mock server tests are disabled")

    response = @telnyx.oauth_clients.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::OAuthClient
    end

    assert_pattern do
      row => {
        client_id: String,
        client_type: Telnyx::OAuthClient::ClientType,
        created_at: Time,
        name: String,
        org_id: String,
        record_type: Telnyx::OAuthClient::RecordType,
        require_pkce: Telnyx::Internal::Type::Boolean,
        updated_at: Time,
        user_id: String,
        allowed_grant_types: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::OAuthClient::AllowedGrantType]) | nil,
        allowed_scopes: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        client_secret: String | nil,
        logo_uri: String | nil,
        policy_uri: String | nil,
        redirect_uris: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        tos_uri: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.oauth_clients.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end
end
