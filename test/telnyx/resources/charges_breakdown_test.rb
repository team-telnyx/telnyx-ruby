# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::ChargesBreakdownTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @telnyx.charges_breakdown.retrieve(start_date: "2025-05-01")

    assert_pattern do
      response => Telnyx::Models::ChargesBreakdownRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::ChargesBreakdownRetrieveResponse::Data
      }
    end
  end
end
