# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::CampaignBuilderTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.campaign_builder.create(brand_id: "brandId", description: "description", usecase: "usecase")

    assert_pattern do
      response => Telnyx::Models::CampaignBuilderCreateResponse
    end

    assert_pattern do
      case response
      in Telnyx::Internal::Type::Unknown
      in Telnyx::TelnyxCampaignCsp
      end
    end
  end
end
