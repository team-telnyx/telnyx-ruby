# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Messaging10dlc::CampaignBuilderTest < Telnyx::Test::ResourceTest
  def test_submit_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.messaging_10dlc.campaign_builder.submit(
        brand_id: "brandId",
        description: "description",
        usecase: "usecase"
      )

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
end
