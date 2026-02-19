# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::IntegrationSecretsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

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
    skip("Mock server tests are disabled")

    response = @telnyx.integration_secrets.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::IntegrationSecret
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        identifier: String,
        record_type: String,
        updated_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.integration_secrets.delete("id")

    assert_pattern do
      response => nil
    end
  end
end
