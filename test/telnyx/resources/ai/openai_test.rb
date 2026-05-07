# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AI::OpenAITest < Telnyx::Test::ResourceTest
  def test_list_models
    skip("Mock server tests are disabled")

    response = @telnyx.ai.openai.list_models

    assert_pattern do
      response => Telnyx::Models::AI::OpenAIListModelsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::OpenAIListModelsResponse::Data]),
        object: String | nil
      }
    end
  end
end
