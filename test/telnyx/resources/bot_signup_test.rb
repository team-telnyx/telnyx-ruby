# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::BotSignupTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.bot_signup.create(
        bot_challenge_answer: "35",
        bot_challenge_nonce: "c6feda4e-6501-4db9-a21f-665e5b4ce2ba",
        privacy_policy_url: "https://telnyx.com/privacy-policy",
        terms_and_conditions_url: "https://telnyx.com/terms-and-conditions-of-service",
        terms_of_service: true
      )

    assert_pattern do
      response => Telnyx::SuccessResponse
    end

    assert_pattern do
      response => {
        message: String,
        success: Telnyx::Internal::Type::Boolean
      }
    end
  end

  def test_resend_magic_link_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.bot_signup.resend_magic_link(email: "agent-owner@example.com")

    assert_pattern do
      response => Telnyx::SuccessResponse
    end

    assert_pattern do
      response => {
        message: String,
        success: Telnyx::Internal::Type::Boolean
      }
    end
  end
end
