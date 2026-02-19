# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Verifications::ActionsTest < Telnyx::Test::ResourceTest
  def test_verify
    skip("Mock server tests are disabled")

    response = @telnyx.verifications.actions.verify("12ade33a-21c0-473b-b055-b3c836e1c292")

    assert_pattern do
      response => Telnyx::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse::Data
      }
    end
  end
end
