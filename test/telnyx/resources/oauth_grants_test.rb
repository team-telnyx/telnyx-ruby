# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::OAuthGrantsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.oauth_grants.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::OAuthGrantRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::OAuthGrant | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.oauth_grants.list

    assert_pattern do
      response => Telnyx::Models::OAuthGrantListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::OAuthGrant]) | nil,
        meta: Telnyx::PaginationMetaOAuth | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.oauth_grants.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::OAuthGrantDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::OAuthGrant | nil
      }
    end
  end
end
