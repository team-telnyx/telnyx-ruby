# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Number10dlc::Campaign::UsecaseTest < Telnyx::Test::ResourceTest
  def test_retrieve_cost_required_params
    skip("Prism tests are disabled")

    response = @telnyx.number_10dlc.campaign.usecase.retrieve_cost(usecase: "usecase")

    assert_pattern do
      response => Telnyx::Models::Number10dlc::Campaign::UsecaseRetrieveCostResponse
    end

    assert_pattern do
      response => {
        campaign_usecase: String,
        description: String,
        monthly_cost: String,
        up_front_cost: String
      }
    end
  end
end
