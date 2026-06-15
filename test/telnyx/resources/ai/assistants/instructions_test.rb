# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Assistants::InstructionsTest < Telnyx::Test::ResourceTest
  def test_enhance
    skip("Mock server tests are disabled")

    response = @telnyx.ai.assistants.instructions.enhance("assistant_id")

    assert_pattern do
      response => String
    end
  end
end
