# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::PhoneNumberCampaignsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.phone_number_campaigns.create(
        campaign_id: "4b300178-131c-d902-d54e-72d90ba1620j",
        phone_number: "+18005550199"
      )

    assert_pattern do
      response => Telnyx::PhoneNumberCampaign
    end

    assert_pattern do
      response => {
        campaign_id: String,
        created_at: String,
        phone_number: String,
        updated_at: String,
        assignment_status: Telnyx::PhoneNumberCampaign::AssignmentStatus | nil,
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

    response = @telnyx.phone_number_campaigns.retrieve("phoneNumber")

    assert_pattern do
      response => Telnyx::PhoneNumberCampaign
    end

    assert_pattern do
      response => {
        campaign_id: String,
        created_at: String,
        phone_number: String,
        updated_at: String,
        assignment_status: Telnyx::PhoneNumberCampaign::AssignmentStatus | nil,
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
      @telnyx.phone_number_campaigns.update(
        "phoneNumber",
        campaign_id: "4b300178-131c-d902-d54e-72d90ba1620j",
        body_phone_number: "+18005550199"
      )

    assert_pattern do
      response => Telnyx::PhoneNumberCampaign
    end

    assert_pattern do
      response => {
        campaign_id: String,
        created_at: String,
        phone_number: String,
        updated_at: String,
        assignment_status: Telnyx::PhoneNumberCampaign::AssignmentStatus | nil,
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

    response = @telnyx.phone_number_campaigns.list

    assert_pattern do
      response => Telnyx::Models::PhoneNumberCampaignListResponse
    end

    assert_pattern do
      response => {
        page: Integer,
        records: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumberCampaign]),
        total_records: Integer
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.phone_number_campaigns.delete("phoneNumber")

    assert_pattern do
      response => Telnyx::PhoneNumberCampaign
    end

    assert_pattern do
      response => {
        campaign_id: String,
        created_at: String,
        phone_number: String,
        updated_at: String,
        assignment_status: Telnyx::PhoneNumberCampaign::AssignmentStatus | nil,
        brand_id: String | nil,
        failure_reasons: String | nil,
        tcr_brand_id: String | nil,
        tcr_campaign_id: String | nil,
        telnyx_campaign_id: String | nil
      }
    end
  end
end
