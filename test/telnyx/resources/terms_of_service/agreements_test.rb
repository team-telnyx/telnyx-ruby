# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::TermsOfService::AgreementsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.terms_of_service.agreements.retrieve("550e8400-e29b-41d4-a716-446655440000")

    assert_pattern do
      response => Telnyx::TermsOfService::TosAgreementWrapped
    end

    assert_pattern do
      response => {
        data: Telnyx::TermsOfService::TosAgreement
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.terms_of_service.agreements.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::TermsOfService::TosAgreement
    end

    assert_pattern do
      row => {
        id: String | nil,
        agreed_at: Time | nil,
        created_at: Time | nil,
        product_type: Telnyx::TermsOfService::TosProductType | nil,
        terms_version: String | nil,
        version: String | nil
      }
    end
  end
end
