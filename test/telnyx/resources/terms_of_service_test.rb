# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::TermsOfServiceTest < Telnyx::Test::ResourceTest
  def test_info
    skip("Mock server tests are disabled")

    response = @telnyx.terms_of_service.info

    assert_pattern do
      response => Telnyx::Models::TermsOfServiceInfoResponse
    end

    assert_pattern do
      response => {
        agreements: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::TermsOfServiceInfoResponse::Agreement]) | nil
      }
    end
  end

  def test_status
    skip("Mock server tests are disabled")

    response = @telnyx.terms_of_service.status

    assert_pattern do
      response => Telnyx::Models::TermsOfServiceStatusResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::TermsOfServiceStatusResponse::Data
      }
    end
  end
end
