# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Number10dlc::Brand::SMSOtpTest < Telnyx::Test::ResourceTest
  def test_get_status
    skip("Prism tests are disabled")

    response = @telnyx.number_10dlc.brand.sms_otp.get_status("OTP4B2001")

    assert_pattern do
      response => Telnyx::Models::Number10dlc::Brand::SMSOtpGetStatusResponse
    end

    assert_pattern do
      response => {
        brand_id: String,
        delivery_status: String,
        mobile_phone: String,
        reference_id: String,
        request_date: Time,
        delivery_status_date: Time | nil,
        delivery_status_details: String | nil,
        verify_date: Time | nil
      }
    end
  end

  def test_trigger_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.number_10dlc.brand.sms_otp.trigger(
        "4b20019b-043a-78f8-0657-b3be3f4b4002",
        pin_sms: "Your PIN is @OTP_PIN@",
        success_sms: "Verification successful!"
      )

    assert_pattern do
      response => Telnyx::Models::Number10dlc::Brand::SMSOtpTriggerResponse
    end

    assert_pattern do
      response => {
        brand_id: String,
        reference_id: String
      }
    end
  end

  def test_verify_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.number_10dlc.brand.sms_otp.verify("4b20019b-043a-78f8-0657-b3be3f4b4002", otp_pin: "123456")

    assert_pattern do
      response => nil
    end
  end
end
