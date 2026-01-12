# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Messaging10dlc::CampaignTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.messaging_10dlc.campaign.retrieve("campaignId")

    assert_pattern do
      response => Telnyx::Messaging10dlc::TelnyxCampaignCsp
    end

    assert_pattern do
      response => {
        brand_id: String,
        campaign_id: String,
        csp_id: String,
        description: String,
        mock: Telnyx::Internal::Type::Boolean,
        sub_usecases: ^(Telnyx::Internal::Type::ArrayOf[String]),
        terms_and_conditions: Telnyx::Internal::Type::Boolean,
        usecase: String,
        age_gated: Telnyx::Internal::Type::Boolean | nil,
        auto_renewal: Telnyx::Internal::Type::Boolean | nil,
        billed_date: String | nil,
        brand_display_name: String | nil,
        campaign_status: Telnyx::Messaging10dlc::TelnyxCampaignCsp::CampaignStatus | nil,
        create_date: String | nil,
        direct_lending: Telnyx::Internal::Type::Boolean | nil,
        embedded_link: Telnyx::Internal::Type::Boolean | nil,
        embedded_link_sample: String | nil,
        embedded_phone: Telnyx::Internal::Type::Boolean | nil,
        failure_reasons: String | nil,
        help_keywords: String | nil,
        help_message: String | nil,
        is_t_mobile_number_pooling_enabled: Telnyx::Internal::Type::Boolean | nil,
        is_t_mobile_registered: Telnyx::Internal::Type::Boolean | nil,
        is_t_mobile_suspended: Telnyx::Internal::Type::Boolean | nil,
        message_flow: String | nil,
        next_renewal_or_expiration_date: String | nil,
        number_pool: Telnyx::Internal::Type::Boolean | nil,
        optin_keywords: String | nil,
        optin_message: String | nil,
        optout_keywords: String | nil,
        optout_message: String | nil,
        privacy_policy_link: String | nil,
        reference_id: String | nil,
        reseller_id: String | nil,
        sample1: String | nil,
        sample2: String | nil,
        sample3: String | nil,
        sample4: String | nil,
        sample5: String | nil,
        status: String | nil,
        submission_status: Telnyx::Messaging10dlc::TelnyxCampaignCsp::SubmissionStatus | nil,
        subscriber_help: Telnyx::Internal::Type::Boolean | nil,
        subscriber_optin: Telnyx::Internal::Type::Boolean | nil,
        subscriber_optout: Telnyx::Internal::Type::Boolean | nil,
        tcr_brand_id: String | nil,
        tcr_campaign_id: String | nil,
        terms_and_conditions_link: String | nil,
        vertical: String | nil,
        webhook_failover_url: String | nil,
        webhook_url: String | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.messaging_10dlc.campaign.update("campaignId")

    assert_pattern do
      response => Telnyx::Messaging10dlc::TelnyxCampaignCsp
    end

    assert_pattern do
      response => {
        brand_id: String,
        campaign_id: String,
        csp_id: String,
        description: String,
        mock: Telnyx::Internal::Type::Boolean,
        sub_usecases: ^(Telnyx::Internal::Type::ArrayOf[String]),
        terms_and_conditions: Telnyx::Internal::Type::Boolean,
        usecase: String,
        age_gated: Telnyx::Internal::Type::Boolean | nil,
        auto_renewal: Telnyx::Internal::Type::Boolean | nil,
        billed_date: String | nil,
        brand_display_name: String | nil,
        campaign_status: Telnyx::Messaging10dlc::TelnyxCampaignCsp::CampaignStatus | nil,
        create_date: String | nil,
        direct_lending: Telnyx::Internal::Type::Boolean | nil,
        embedded_link: Telnyx::Internal::Type::Boolean | nil,
        embedded_link_sample: String | nil,
        embedded_phone: Telnyx::Internal::Type::Boolean | nil,
        failure_reasons: String | nil,
        help_keywords: String | nil,
        help_message: String | nil,
        is_t_mobile_number_pooling_enabled: Telnyx::Internal::Type::Boolean | nil,
        is_t_mobile_registered: Telnyx::Internal::Type::Boolean | nil,
        is_t_mobile_suspended: Telnyx::Internal::Type::Boolean | nil,
        message_flow: String | nil,
        next_renewal_or_expiration_date: String | nil,
        number_pool: Telnyx::Internal::Type::Boolean | nil,
        optin_keywords: String | nil,
        optin_message: String | nil,
        optout_keywords: String | nil,
        optout_message: String | nil,
        privacy_policy_link: String | nil,
        reference_id: String | nil,
        reseller_id: String | nil,
        sample1: String | nil,
        sample2: String | nil,
        sample3: String | nil,
        sample4: String | nil,
        sample5: String | nil,
        status: String | nil,
        submission_status: Telnyx::Messaging10dlc::TelnyxCampaignCsp::SubmissionStatus | nil,
        subscriber_help: Telnyx::Internal::Type::Boolean | nil,
        subscriber_optin: Telnyx::Internal::Type::Boolean | nil,
        subscriber_optout: Telnyx::Internal::Type::Boolean | nil,
        tcr_brand_id: String | nil,
        tcr_campaign_id: String | nil,
        terms_and_conditions_link: String | nil,
        vertical: String | nil,
        webhook_failover_url: String | nil,
        webhook_url: String | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @telnyx.messaging_10dlc.campaign.list(brand_id: "brandId")

    assert_pattern do
      response => Telnyx::Internal::PerPagePaginationV2
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Messaging10dlc::CampaignListResponse
    end

    assert_pattern do
      row => {
        age_gated: Telnyx::Internal::Type::Boolean | nil,
        assigned_phone_numbers_count: Float | nil,
        auto_renewal: Telnyx::Internal::Type::Boolean | nil,
        billed_date: String | nil,
        brand_display_name: String | nil,
        brand_id: String | nil,
        campaign_id: String | nil,
        campaign_status: Telnyx::Models::Messaging10dlc::CampaignListResponse::CampaignStatus | nil,
        create_date: String | nil,
        csp_id: String | nil,
        description: String | nil,
        direct_lending: Telnyx::Internal::Type::Boolean | nil,
        embedded_link: Telnyx::Internal::Type::Boolean | nil,
        embedded_link_sample: String | nil,
        embedded_phone: Telnyx::Internal::Type::Boolean | nil,
        failure_reasons: String | nil,
        help_keywords: String | nil,
        help_message: String | nil,
        is_t_mobile_number_pooling_enabled: Telnyx::Internal::Type::Boolean | nil,
        is_t_mobile_registered: Telnyx::Internal::Type::Boolean | nil,
        is_t_mobile_suspended: Telnyx::Internal::Type::Boolean | nil,
        message_flow: String | nil,
        mock: Telnyx::Internal::Type::Boolean | nil,
        next_renewal_or_expiration_date: String | nil,
        number_pool: Telnyx::Internal::Type::Boolean | nil,
        optin_keywords: String | nil,
        optin_message: String | nil,
        optout_keywords: String | nil,
        optout_message: String | nil,
        privacy_policy_link: String | nil,
        reference_id: String | nil,
        reseller_id: String | nil,
        sample1: String | nil,
        sample2: String | nil,
        sample3: String | nil,
        sample4: String | nil,
        sample5: String | nil,
        status: String | nil,
        submission_status: Telnyx::Models::Messaging10dlc::CampaignListResponse::SubmissionStatus | nil,
        subscriber_help: Telnyx::Internal::Type::Boolean | nil,
        subscriber_optin: Telnyx::Internal::Type::Boolean | nil,
        subscriber_optout: Telnyx::Internal::Type::Boolean | nil,
        sub_usecases: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        tcr_brand_id: String | nil,
        tcr_campaign_id: String | nil,
        terms_and_conditions: Telnyx::Internal::Type::Boolean | nil,
        terms_and_conditions_link: String | nil,
        usecase: String | nil,
        vertical: String | nil,
        webhook_failover_url: String | nil,
        webhook_url: String | nil
      }
    end
  end

  def test_accept_sharing
    skip("Prism tests are disabled")

    response = @telnyx.messaging_10dlc.campaign.accept_sharing("C26F1KLZN")

    assert_pattern do
      response => ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown])
    end
  end

  def test_deactivate
    skip("Prism tests are disabled")

    response = @telnyx.messaging_10dlc.campaign.deactivate("campaignId")

    assert_pattern do
      response => Telnyx::Models::Messaging10dlc::CampaignDeactivateResponse
    end

    assert_pattern do
      response => {
        time: Float,
        message: String | nil,
        record_type: String | nil
      }
    end
  end

  def test_get_mno_metadata
    skip("Prism tests are disabled")

    response = @telnyx.messaging_10dlc.campaign.get_mno_metadata("campaignId")

    assert_pattern do
      response => Telnyx::Models::Messaging10dlc::CampaignGetMnoMetadataResponse
    end

    assert_pattern do
      response => {
        mno_10999: Telnyx::Models::Messaging10dlc::CampaignGetMnoMetadataResponse::Mno10999 | nil
      }
    end
  end

  def test_get_operation_status
    skip("Prism tests are disabled")

    response = @telnyx.messaging_10dlc.campaign.get_operation_status("campaignId")

    assert_pattern do
      response => ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown])
    end
  end

  def test_get_sharing_status
    skip("Prism tests are disabled")

    response = @telnyx.messaging_10dlc.campaign.get_sharing_status("campaignId")

    assert_pattern do
      response => Telnyx::Models::Messaging10dlc::CampaignGetSharingStatusResponse
    end

    assert_pattern do
      response => {
        shared_by_me: Telnyx::Messaging10dlc::CampaignSharingStatus | nil,
        shared_with_me: Telnyx::Messaging10dlc::CampaignSharingStatus | nil
      }
    end
  end

  def test_submit_appeal_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.messaging_10dlc.campaign.submit_appeal(
        "5eb13888-32b7-4cab-95e6-d834dde21d64",
        appeal_reason: "The website has been updated to include the required privacy policy and terms of service."
      )

    assert_pattern do
      response => Telnyx::Models::Messaging10dlc::CampaignSubmitAppealResponse
    end

    assert_pattern do
      response => {
        appealed_at: Time | nil
      }
    end
  end
end
