# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::TexmlTest < Telnyx::Test::ResourceTest
  def test_secrets_required_params
    skip("Prism tests are disabled")

    response = @telnyx.texml.secrets(name: "My Secret Name", value: "My Secret Value")

    assert_pattern do
      response => Telnyx::Models::TexmlSecretsResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::TexmlSecretsResponse::Data | nil
      }
    end
  end
end
