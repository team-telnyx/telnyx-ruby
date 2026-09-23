# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::BotChallengeTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @telnyx.bot_challenge.create

    assert_pattern do
      response => Telnyx::Models::BotChallengeCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::BotChallengeCreateResponse::Data
      }
    end
  end
end
