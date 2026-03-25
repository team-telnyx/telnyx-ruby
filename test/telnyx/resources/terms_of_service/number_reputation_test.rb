# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::TermsOfService::NumberReputationTest < Telnyx::Test::ResourceTest
  def test_agree
    skip("Mock server tests are disabled")

    response = @telnyx.terms_of_service.number_reputation.agree

    assert_pattern do
      response => nil
    end
  end
end
