# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Number10dlc::PartnerCampaignTest < Telnyx::Test::ResourceTest
  def test_get_shared_by_me
    skip("Prism tests are disabled")

    response = @telnyx.number_10dlc.partner_campaign.get_shared_by_me

    assert_pattern do
      response => Telnyx::Models::Number10dlc::PartnerCampaignGetSharedByMeResponse
    end

    assert_pattern do
      response => {
        page: Integer | nil,
        records: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Number10dlc::PartnerCampaignGetSharedByMeResponse::Record]) | nil,
        total_records: Integer | nil
      }
    end
  end

  def test_get_sharing_status
    skip("Prism tests are disabled")

    response = @telnyx.number_10dlc.partner_campaign.get_sharing_status("campaignId")

    assert_pattern do
      response => ^(Telnyx::Internal::Type::HashOf[Telnyx::CampaignSharingStatus])
    end
  end
end
