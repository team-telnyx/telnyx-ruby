# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Addresses::ActionsTest < Telnyx::Test::ResourceTest
  def test_accept_suggestions
    skip("Mock server tests are disabled")

    response = @telnyx.addresses.actions.accept_suggestions("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse::Data | nil
      }
    end
  end

  def test_validate_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.addresses.actions.validate(
        country_code: "US",
        postal_code: "78701",
        street_address: "600 Congress Avenue"
      )

    assert_pattern do
      response => Telnyx::Models::Addresses::ActionValidateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Addresses::ActionValidateResponse::Data | nil
      }
    end
  end
end
