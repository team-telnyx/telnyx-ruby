# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::IntegrationSecretsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.integration_secrets.create(identifier: "my_secret", type: :bearer)

    assert_pattern do
      response => Telnyx::Models::IntegrationSecretCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::IntegrationSecret
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.integration_secrets.list

    assert_pattern do
      response => Telnyx::Models::IntegrationSecretListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::IntegrationSecret]),
        meta: Telnyx::Models::IntegrationSecretListResponse::Meta
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.integration_secrets.delete("id")

    assert_pattern do
      response => nil
    end
  end
end
