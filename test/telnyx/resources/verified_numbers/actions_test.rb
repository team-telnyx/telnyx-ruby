# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::VerifiedNumbers::ActionsTest < Telnyx::Test::ResourceTest
  def test_submit_verification_code_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.verified_numbers.actions.submit_verification_code("+15551234567", verification_code: "123456")

    assert_pattern do
      response => Telnyx::VerifiedNumberDataWrapper
    end

    assert_pattern do
      response => {
        data: Telnyx::VerifiedNumber | nil
      }
    end
  end
end
