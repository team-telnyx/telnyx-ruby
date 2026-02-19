# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::PhoneNumbers::ActionsTest < Telnyx::Test::ResourceTest
  def test_change_bundle_status_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.phone_numbers.actions.change_bundle_status(
        "1293384261075731499",
        bundle_id: "5194d8fc-87e6-4188-baa9-1c434bbe861b"
      )

    assert_pattern do
      response => Telnyx::Models::PhoneNumbers::ActionChangeBundleStatusResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings | nil
      }
    end
  end

  def test_enable_emergency_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.phone_numbers.actions.enable_emergency(
        "1293384261075731499",
        emergency_address_id: "53829456729313",
        emergency_enabled: true
      )

    assert_pattern do
      response => Telnyx::Models::PhoneNumbers::ActionEnableEmergencyResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings | nil
      }
    end
  end

  def test_verify_ownership_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.phone_numbers.actions.verify_ownership(phone_numbers: ["+15551234567"])

    assert_pattern do
      response => Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::PhoneNumbers::ActionVerifyOwnershipResponse::Data | nil
      }
    end
  end
end
