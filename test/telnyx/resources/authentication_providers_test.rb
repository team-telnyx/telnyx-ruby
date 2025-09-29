# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::AuthenticationProvidersTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.authentication_providers.create(
        name: "Okta",
        settings: {
          idp_cert_fingerprint: "13:38:C7:BB:C9:FF:4A:70:38:3A:E3:D9:5C:CD:DB:2E:50:1E:80:A7",
          idp_entity_id: "https://myorg.myidp.com/saml/metadata",
          idp_sso_target_url: "https://myorg.myidp.com/trust/saml2/http-post/sso"
        },
        short_name: "myorg"
      )

    assert_pattern do
      response => Telnyx::Models::AuthenticationProviderCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AuthenticationProvider | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.authentication_providers.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::AuthenticationProviderRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AuthenticationProvider | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.authentication_providers.update("id")

    assert_pattern do
      response => Telnyx::Models::AuthenticationProviderUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AuthenticationProvider | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.authentication_providers.list

    assert_pattern do
      response => Telnyx::Models::AuthenticationProviderListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AuthenticationProvider]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.authentication_providers.delete("id")

    assert_pattern do
      response => Telnyx::Models::AuthenticationProviderDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AuthenticationProvider | nil
      }
    end
  end
end
