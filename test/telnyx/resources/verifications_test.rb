# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::VerificationsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.verifications.retrieve("12ade33a-21c0-473b-b055-b3c836e1c292")

    assert_pattern do
      response => Telnyx::Models::VerificationRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Verification
      }
    end
  end

  def test_trigger_call_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.verifications.trigger_call(
        phone_number: "+13035551234",
        verify_profile_id: "12ade33a-21c0-473b-b055-b3c836e1c292"
      )

    assert_pattern do
      response => Telnyx::CreateVerificationResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Verification
      }
    end
  end

  def test_trigger_flashcall_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.verifications.trigger_flashcall(
        phone_number: "+13035551234",
        verify_profile_id: "12ade33a-21c0-473b-b055-b3c836e1c292"
      )

    assert_pattern do
      response => Telnyx::CreateVerificationResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Verification
      }
    end
  end

  def test_trigger_sms_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.verifications.trigger_sms(
        phone_number: "+13035551234",
        verify_profile_id: "12ade33a-21c0-473b-b055-b3c836e1c292"
      )

    assert_pattern do
      response => Telnyx::CreateVerificationResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Verification
      }
    end
  end
end
