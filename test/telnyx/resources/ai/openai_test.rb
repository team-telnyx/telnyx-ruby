# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AI::OpenAITest < Telnyx::Test::ResourceTest
  def test_create_response_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.openai.create_response(body: {model: "bar", input: "bar"})

    assert_pattern do
      response => ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown])
    end
  end

  def test_list_models
    skip("Mock server tests are disabled")

    response = @telnyx.ai.openai.list_models

    assert_pattern do
      response => Telnyx::Models::AI::OpenAIListModelsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::ModelMetadata]),
        object: String | nil
      }
    end
  end
end
