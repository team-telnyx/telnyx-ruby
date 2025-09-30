# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::WellKnownTest < Telnyx::Test::ResourceTest
  def test_retrieve_authorization_server_metadata
    skip("Prism tests are disabled")

    response = @telnyx.well_known.retrieve_authorization_server_metadata

    assert_pattern do
      response => Telnyx::Models::WellKnownRetrieveAuthorizationServerMetadataResponse
    end

    assert_pattern do
      response => {
        authorization_endpoint: String | nil,
        code_challenge_methods_supported: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        grant_types_supported: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        introspection_endpoint: String | nil,
        issuer: String | nil,
        jwks_uri: String | nil,
        registration_endpoint: String | nil,
        response_types_supported: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        scopes_supported: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        token_endpoint: String | nil,
        token_endpoint_auth_methods_supported: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_retrieve_protected_resource_metadata
    skip("Prism tests are disabled")

    response = @telnyx.well_known.retrieve_protected_resource_metadata

    assert_pattern do
      response => Telnyx::Models::WellKnownRetrieveProtectedResourceMetadataResponse
    end

    assert_pattern do
      response => {
        authorization_servers: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        resource: String | nil
      }
    end
  end
end
