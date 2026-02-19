# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::ChargesSummaryTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.charges_summary.retrieve(end_date: "2025-06-01", start_date: "2025-05-01")

    assert_pattern do
      response => Telnyx::Models::ChargesSummaryRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::ChargesSummaryRetrieveResponse::Data
      }
    end
  end
end
