# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::TermsOfService::BrandedCallingTest < Telnyx::Test::ResourceTest
  def test_agree
    skip("Mock server tests are disabled")

    response = @telnyx.terms_of_service.branded_calling.agree

    assert_pattern do
      response => Telnyx::TermsOfService::TosAgreementWrapped
    end

    assert_pattern do
      response => {
        data: Telnyx::TermsOfService::TosAgreement
      }
    end
  end
end
