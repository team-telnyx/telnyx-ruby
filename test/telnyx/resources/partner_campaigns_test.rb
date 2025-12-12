# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::PartnerCampaignsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.partner_campaigns.retrieve("campaignId")

    assert_pattern do
      response => Telnyx::TelnyxDownstreamCampaign
    end

    assert_pattern do
      response => {
        tcr_brand_id: String,
        tcr_campaign_id: String,
        age_gated: Telnyx::Internal::Type::Boolean | nil,
        assigned_phone_numbers_count: Float | nil,
        brand_display_name: String | nil,
        campaign_status: Telnyx::TelnyxDownstreamCampaign::CampaignStatus | nil,
        created_at: String | nil,
        description: String | nil,
        direct_lending: Telnyx::Internal::Type::Boolean | nil,
        embedded_link: Telnyx::Internal::Type::Boolean | nil,
        embedded_link_sample: String | nil,
        embedded_phone: Telnyx::Internal::Type::Boolean | nil,
        failure_reasons: String | nil,
        help_keywords: String | nil,
        help_message: String | nil,
        is_number_pooling_enabled: Telnyx::Internal::Type::Boolean | nil,
        message_flow: String | nil,
        number_pool: Telnyx::Internal::Type::Boolean | nil,
        optin_keywords: String | nil,
        optin_message: String | nil,
        optout_keywords: String | nil,
        optout_message: String | nil,
        privacy_policy_link: String | nil,
        sample1: String | nil,
        sample2: String | nil,
        sample3: String | nil,
        sample4: String | nil,
        sample5: String | nil,
        subscriber_optin: Telnyx::Internal::Type::Boolean | nil,
        subscriber_optout: Telnyx::Internal::Type::Boolean | nil,
        sub_usecases: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        terms_and_conditions: Telnyx::Internal::Type::Boolean | nil,
        terms_and_conditions_link: String | nil,
        updated_at: String | nil,
        usecase: String | nil,
        webhook_failover_url: String | nil,
        webhook_url: String | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.partner_campaigns.update("campaignId")

    assert_pattern do
      response => Telnyx::TelnyxDownstreamCampaign
    end

    assert_pattern do
      response => {
        tcr_brand_id: String,
        tcr_campaign_id: String,
        age_gated: Telnyx::Internal::Type::Boolean | nil,
        assigned_phone_numbers_count: Float | nil,
        brand_display_name: String | nil,
        campaign_status: Telnyx::TelnyxDownstreamCampaign::CampaignStatus | nil,
        created_at: String | nil,
        description: String | nil,
        direct_lending: Telnyx::Internal::Type::Boolean | nil,
        embedded_link: Telnyx::Internal::Type::Boolean | nil,
        embedded_link_sample: String | nil,
        embedded_phone: Telnyx::Internal::Type::Boolean | nil,
        failure_reasons: String | nil,
        help_keywords: String | nil,
        help_message: String | nil,
        is_number_pooling_enabled: Telnyx::Internal::Type::Boolean | nil,
        message_flow: String | nil,
        number_pool: Telnyx::Internal::Type::Boolean | nil,
        optin_keywords: String | nil,
        optin_message: String | nil,
        optout_keywords: String | nil,
        optout_message: String | nil,
        privacy_policy_link: String | nil,
        sample1: String | nil,
        sample2: String | nil,
        sample3: String | nil,
        sample4: String | nil,
        sample5: String | nil,
        subscriber_optin: Telnyx::Internal::Type::Boolean | nil,
        subscriber_optout: Telnyx::Internal::Type::Boolean | nil,
        sub_usecases: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        terms_and_conditions: Telnyx::Internal::Type::Boolean | nil,
        terms_and_conditions_link: String | nil,
        updated_at: String | nil,
        usecase: String | nil,
        webhook_failover_url: String | nil,
        webhook_url: String | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.partner_campaigns.list

    assert_pattern do
      response => Telnyx::Internal::PerPagePaginationV2
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::TelnyxDownstreamCampaign
    end

    assert_pattern do
      row => {
        tcr_brand_id: String,
        tcr_campaign_id: String,
        age_gated: Telnyx::Internal::Type::Boolean | nil,
        assigned_phone_numbers_count: Float | nil,
        brand_display_name: String | nil,
        campaign_status: Telnyx::TelnyxDownstreamCampaign::CampaignStatus | nil,
        created_at: String | nil,
        description: String | nil,
        direct_lending: Telnyx::Internal::Type::Boolean | nil,
        embedded_link: Telnyx::Internal::Type::Boolean | nil,
        embedded_link_sample: String | nil,
        embedded_phone: Telnyx::Internal::Type::Boolean | nil,
        failure_reasons: String | nil,
        help_keywords: String | nil,
        help_message: String | nil,
        is_number_pooling_enabled: Telnyx::Internal::Type::Boolean | nil,
        message_flow: String | nil,
        number_pool: Telnyx::Internal::Type::Boolean | nil,
        optin_keywords: String | nil,
        optin_message: String | nil,
        optout_keywords: String | nil,
        optout_message: String | nil,
        privacy_policy_link: String | nil,
        sample1: String | nil,
        sample2: String | nil,
        sample3: String | nil,
        sample4: String | nil,
        sample5: String | nil,
        subscriber_optin: Telnyx::Internal::Type::Boolean | nil,
        subscriber_optout: Telnyx::Internal::Type::Boolean | nil,
        sub_usecases: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        terms_and_conditions: Telnyx::Internal::Type::Boolean | nil,
        terms_and_conditions_link: String | nil,
        updated_at: String | nil,
        usecase: String | nil,
        webhook_failover_url: String | nil,
        webhook_url: String | nil
      }
    end
  end

  def test_list_shared_by_me
    skip("Prism tests are disabled")

    response = @telnyx.partner_campaigns.list_shared_by_me

    assert_pattern do
      response => Telnyx::Internal::PerPagePaginationV2
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::PartnerCampaignListSharedByMeResponse
    end

    assert_pattern do
      row => {
        brand_id: String,
        campaign_id: String,
        usecase: String,
        create_date: String | nil,
        status: String | nil
      }
    end
  end

  def test_retrieve_sharing_status
    skip("Prism tests are disabled")

    response = @telnyx.partner_campaigns.retrieve_sharing_status("campaignId")

    assert_pattern do
      response => ^(Telnyx::Internal::Type::HashOf[Telnyx::Number10dlc::CampaignSharingStatus])
    end
  end
end
