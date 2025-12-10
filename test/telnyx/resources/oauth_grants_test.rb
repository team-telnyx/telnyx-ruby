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
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::OAuthGrant
    end

    assert_pattern do
      row => {
        id: String,
        client_id: String,
        created_at: Time,
        record_type: Telnyx::OAuthGrant::RecordType,
        scopes: ^(Telnyx::Internal::Type::ArrayOf[String]),
        last_used_at: Time | nil
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
