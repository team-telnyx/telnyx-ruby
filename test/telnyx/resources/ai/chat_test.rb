# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AI::ChatTest < Telnyx::Test::ResourceTest
  def test_create_completion_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.ai.chat.create_completion(
        messages: [
          {content: "You are a friendly chatbot.", role: :system},
          {content: "Hello, world!", role: :user}
        ]
      )

    assert_pattern do
      response => ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown])
    end
  end
end
