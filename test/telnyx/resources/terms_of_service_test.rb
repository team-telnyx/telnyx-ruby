# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::TermsOfServiceTest < Telnyx::Test::ResourceTest
  def test_retrieve_info
    skip("Mock server tests are disabled")

    response = @telnyx.terms_of_service.retrieve_info

    assert_pattern do
      response => Telnyx::Models::TermsOfServiceRetrieveInfoResponse
    end

    assert_pattern do
      response => {
        agreements: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::TermsOfServiceRetrieveInfoResponse::Agreement]) | nil
      }
    end
  end

  def test_retrieve_status
    skip("Mock server tests are disabled")

    response = @telnyx.terms_of_service.retrieve_status

    assert_pattern do
      response => Telnyx::Models::TermsOfServiceRetrieveStatusResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::TermsOfServiceRetrieveStatusResponse::Data
      }
    end
  end
end
