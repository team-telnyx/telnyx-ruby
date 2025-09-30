# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::CountryCoverageTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.country_coverage.retrieve

    assert_pattern do
      response => Telnyx::Models::CountryCoverageRetrieveResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::CountryCoverageRetrieveResponse::Data]) | nil
      }
    end
  end

  def test_retrieve_country
    skip("Prism tests are disabled")

    response = @telnyx.country_coverage.retrieve_country("US")

    assert_pattern do
      response => Telnyx::Models::CountryCoverageRetrieveCountryResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::CountryCoverageRetrieveCountryResponse::Data | nil
      }
    end
  end
end
