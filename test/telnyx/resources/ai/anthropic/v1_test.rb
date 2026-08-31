# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Anthropic::V1Test < Telnyx::Test::ResourceTest
  def test_messages_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.anthropic.v1.messages(
        max_tokens: 1024,
        messages: [{role: "bar", content: "bar"}],
        model: "zai-org/GLM-5.3-Flash"
      )

    assert_pattern do
      response => ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown])
    end
  end
end
