# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Number10dlc::CampaignBuilder::BrandTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @telnyx.number_10dlc.campaign_builder.brand.retrieve("usecase", brand_id: "brandId")

    assert_pattern do
      response => Telnyx::Models::Number10dlc::CampaignBuilder::BrandRetrieveResponse
    end

    assert_pattern do
      response => {
        annual_fee: Float | nil,
        max_sub_usecases: Integer | nil,
        min_sub_usecases: Integer | nil,
        mno_metadata: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        monthly_fee: Float | nil,
        quarterly_fee: Float | nil,
        usecase: String | nil
      }
    end
  end
end
