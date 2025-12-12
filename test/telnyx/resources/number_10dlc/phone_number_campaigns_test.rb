# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Number10dlc::PhoneNumberCampaignsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.number_10dlc.phone_number_campaigns.create(
        campaign_id: "4b300178-131c-d902-d54e-72d90ba1620j",
        phone_number: "+18005550199"
      )

    assert_pattern do
      response => Telnyx::Number10dlc::PhoneNumberCampaign
    end

    assert_pattern do
      response => {
        campaign_id: String,
        created_at: String,
        phone_number: String,
        updated_at: String,
        assignment_status: Telnyx::Number10dlc::PhoneNumberCampaign::AssignmentStatus | nil,
        brand_id: String | nil,
        failure_reasons: String | nil,
        tcr_brand_id: String | nil,
        tcr_campaign_id: String | nil,
        telnyx_campaign_id: String | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.number_10dlc.phone_number_campaigns.retrieve("phoneNumber")

    assert_pattern do
      response => Telnyx::Number10dlc::PhoneNumberCampaign
    end

    assert_pattern do
      response => {
        campaign_id: String,
        created_at: String,
        phone_number: String,
        updated_at: String,
        assignment_status: Telnyx::Number10dlc::PhoneNumberCampaign::AssignmentStatus | nil,
        brand_id: String | nil,
        failure_reasons: String | nil,
        tcr_brand_id: String | nil,
        tcr_campaign_id: String | nil,
        telnyx_campaign_id: String | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.number_10dlc.phone_number_campaigns.update(
        "phoneNumber",
        campaign_id: "4b300178-131c-d902-d54e-72d90ba1620j",
        phone_number: "+18005550199"
      )

    assert_pattern do
      response => Telnyx::Number10dlc::PhoneNumberCampaign
    end

    assert_pattern do
      response => {
        campaign_id: String,
        created_at: String,
        phone_number: String,
        updated_at: String,
        assignment_status: Telnyx::Number10dlc::PhoneNumberCampaign::AssignmentStatus | nil,
        brand_id: String | nil,
        failure_reasons: String | nil,
        tcr_brand_id: String | nil,
        tcr_campaign_id: String | nil,
        telnyx_campaign_id: String | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.number_10dlc.phone_number_campaigns.list

    assert_pattern do
      response => Telnyx::Internal::PerPagePaginationV2
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Number10dlc::PhoneNumberCampaign
    end

    assert_pattern do
      row => {
        campaign_id: String,
        created_at: String,
        phone_number: String,
        updated_at: String,
        assignment_status: Telnyx::Number10dlc::PhoneNumberCampaign::AssignmentStatus | nil,
        brand_id: String | nil,
        failure_reasons: String | nil,
        tcr_brand_id: String | nil,
        tcr_campaign_id: String | nil,
        telnyx_campaign_id: String | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.number_10dlc.phone_number_campaigns.delete("phoneNumber")

    assert_pattern do
      response => Telnyx::Number10dlc::PhoneNumberCampaign
    end

    assert_pattern do
      response => {
        campaign_id: String,
        created_at: String,
        phone_number: String,
        updated_at: String,
        assignment_status: Telnyx::Number10dlc::PhoneNumberCampaign::AssignmentStatus | nil,
        brand_id: String | nil,
        failure_reasons: String | nil,
        tcr_brand_id: String | nil,
        tcr_campaign_id: String | nil,
        telnyx_campaign_id: String | nil
      }
    end
  end
end
