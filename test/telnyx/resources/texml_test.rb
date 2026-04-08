# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::TexmlTest < Telnyx::Test::ResourceTest
  def test_initiate_ai_call_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.texml.initiate_ai_call(
        "connection_id",
        ai_assistant_id: "ai-assistant-id-123",
        from: "+13120001234",
        to: "+13121230000"
      )

    assert_pattern do
      response => Telnyx::Models::TexmlInitiateAICallResponse
    end

    assert_pattern do
      response => {
        call_sid: String | nil,
        from: String | nil,
        status: String | nil,
        to: String | nil
      }
    end
  end

  def test_secrets_required_params
    skip("Mock server tests are disabled")

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
