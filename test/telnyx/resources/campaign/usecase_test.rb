# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Campaign::UsecaseTest < Telnyx::Test::ResourceTest
  def test_get_cost_required_params
    skip("Prism tests are disabled")

    response = @telnyx.campaign.usecase.get_cost(usecase: "usecase")

    assert_pattern do
      response => Telnyx::Models::Campaign::UsecaseGetCostResponse
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
