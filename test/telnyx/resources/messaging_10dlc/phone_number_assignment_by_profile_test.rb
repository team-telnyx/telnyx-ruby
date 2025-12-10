# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Messaging10dlc::PhoneNumberAssignmentByProfileTest < Telnyx::Test::ResourceTest
  def test_assign_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.messaging_10dlc.phone_number_assignment_by_profile.assign(
        messaging_profile_id: "4001767e-ce0f-4cae-9d5f-0d5e636e7809"
      )

    assert_pattern do
      response => Telnyx::Models::Messaging10dlc::PhoneNumberAssignmentByProfileAssignResponse
    end

    assert_pattern do
      response => {
        messaging_profile_id: String,
        task_id: String,
        campaign_id: String | nil,
        tcr_campaign_id: String | nil
      }
    end
  end

  def test_list_phone_number_status
    skip("Prism tests are disabled")

    response = @telnyx.messaging_10dlc.phone_number_assignment_by_profile.list_phone_number_status("taskId")

    assert_pattern do
      response => Telnyx::Models::Messaging10dlc::PhoneNumberAssignmentByProfileListPhoneNumberStatusResponse
    end

    assert_pattern do
      response => {
        records: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Messaging10dlc::PhoneNumberAssignmentByProfileListPhoneNumberStatusResponse::Record])
      }
    end
  end

  def test_retrieve_phone_number_status
    skip("Prism tests are disabled")

    response =
      @telnyx.messaging_10dlc.phone_number_assignment_by_profile.retrieve_phone_number_status("taskId")

    assert_pattern do
      response => Telnyx::Models::Messaging10dlc::PhoneNumberAssignmentByProfileRetrievePhoneNumberStatusResponse
    end

    assert_pattern do
      response => {
        records: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Messaging10dlc::PhoneNumberAssignmentByProfileRetrievePhoneNumberStatusResponse::Record])
      }
    end
  end

  def test_retrieve_status
    skip("Prism tests are disabled")

    response = @telnyx.messaging_10dlc.phone_number_assignment_by_profile.retrieve_status("taskId")

    assert_pattern do
      response => Telnyx::Models::Messaging10dlc::PhoneNumberAssignmentByProfileRetrieveStatusResponse
    end

    assert_pattern do
      response => {
        status: Telnyx::Models::Messaging10dlc::PhoneNumberAssignmentByProfileRetrieveStatusResponse::Status,
        task_id: String,
        created_at: Time | nil,
        updated_at: Time | nil
      }
    end
  end
end
