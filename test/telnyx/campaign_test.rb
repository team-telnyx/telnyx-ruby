# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class CampaignTest < Test::Unit::TestCase
    should "retrieve campaign" do
      omit "ID req mismatch"
      campaign = Campaign.retrieve("id")
      assert_requested :get, "#{Telnyx.api_base}/v2/campaign/id"
      assert_kind_of Campaign, campaign
    end

    should "accept_sharing campaign" do
      omit "ID req mismatch"
      campaign = Campaign.retrieve("id")
      id = campaign.campaignId.gsub(/\s+/, "+").freeze
      campaign.accept_sharing

      assert_requested :post, "#{Telnyx.api_base}/v2/campaign/acceptSharing/#{id}"
    end

    should "get asr_attributes" do
      omit "ID req mismatch"
      campaign = Campaign.retrieve("id")
      id = campaign.campaignId.gsub(/\s+/, "+").freeze
      campaign.osr_attributes

      assert_requested :get, "#{Telnyx.api_base}/v2/campaign/#{id}/osr/attributes"
    end
  end
end
