# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::OAuthTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.oauth.retrieve("consent_token")

    assert_pattern do
      response => Telnyx::Models::OAuthRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::OAuthRetrieveResponse::Data | nil
      }
    end
  end

  def test_grants_required_params
    skip("Prism tests are disabled")

    response = @telnyx.oauth.grants(allowed: true, consent_token: "consent_token")

    assert_pattern do
      response => Telnyx::Models::OAuthGrantsResponse
    end

    assert_pattern do
      response => {
        redirect_uri: String
      }
    end
  end

  def test_introspect_required_params
    skip("Prism tests are disabled")

    response = @telnyx.oauth.introspect(token: "token")

    assert_pattern do
      response => Telnyx::Models::OAuthIntrospectResponse
    end

    assert_pattern do
      response => {
        active: Telnyx::Internal::Type::Boolean,
        aud: String | nil,
        client_id: String | nil,
        exp: Integer | nil,
        iat: Integer | nil,
        iss: String | nil,
        scope: String | nil
      }
    end
  end

  def test_register
    skip("Prism tests are disabled")

    response = @telnyx.oauth.register

    assert_pattern do
      response => Telnyx::Models::OAuthRegisterResponse
    end

    assert_pattern do
      response => {
        client_id: String,
        client_id_issued_at: Integer,
        client_name: String | nil,
        client_secret: String | nil,
        grant_types: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        logo_uri: String | nil,
        policy_uri: String | nil,
        redirect_uris: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        response_types: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        scope: String | nil,
        token_endpoint_auth_method: String | nil,
        tos_uri: String | nil
      }
    end
  end

  def test_retrieve_authorize_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.oauth.retrieve_authorize(
        client_id: "client_id",
        redirect_uri: "https://example.com",
        response_type: :code
      )

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve_jwks
    skip("Prism tests are disabled")

    response = @telnyx.oauth.retrieve_jwks

    assert_pattern do
      response => Telnyx::Models::OAuthRetrieveJwksResponse
    end

    assert_pattern do
      response => {
        keys: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::OAuthRetrieveJwksResponse::Key]) | nil
      }
    end
  end

  def test_token_required_params
    skip("Prism tests are disabled")

    response = @telnyx.oauth.token(grant_type: :client_credentials)

    assert_pattern do
      response => Telnyx::Models::OAuthTokenResponse
    end

    assert_pattern do
      response => {
        access_token: String,
        expires_in: Integer,
        token_type: Telnyx::Models::OAuthTokenResponse::TokenType,
        refresh_token: String | nil,
        scope: String | nil
      }
    end
  end
end
