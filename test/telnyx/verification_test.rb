# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class VerificationTest < Test::Unit::TestCase
    context "create verification" do
      should "call" do
        Verification.call phone_number: "+15555555555",
                          verify_profile_id: "12ade33a-21c0-473b-b055-b3c836e1c292"
        assert_requested :post, "#{Telnyx.api_base}/v2/verifications/call"
      end

      should "send sms" do
        Verification.sms phone_number: "+15555555555",
                         verify_profile_id: "12ade33a-21c0-473b-b055-b3c836e1c292",
                         timeout_secs: 600
        assert_requested :post, "#{Telnyx.api_base}/v2/verifications/sms"
      end

      should "trigger psd2" do
        Verification.psd2 phone_number: "+15555555555",
                          verify_profile_id: "12ade33a-21c0-473b-b055-b3c836e1c292",
                          amount: "12.34",
                          currency: "USD",
                          payee: "FooBar Inc.",
                          timeout_secs: 600

        assert_requested :post, "#{Telnyx.api_base}/v2/verifications/psd2"
      end

      should "flashcall" do
        Verification.flashcall phone_number: "+15555555555",
                               timeout_secs: 600,
                               verify_profile_id: "12ade33a-21c0-473b-b055-b3c836e1c292"
        assert_requested :post, "#{Telnyx.api_base}/v2/verifications/flashcall"
      end

      should "whatsapp" do
        Verification.whatsapp phone_number: "+15555555555",
                              timeout_secs: 600,
                              verify_profile_id: "12ade33a-21c0-473b-b055-b3c836e1c292",
                              app_name: "FooBar"
        assert_requested :post, "#{Telnyx.api_base}/v2/verifications/whatsapp"
      end
    end

    should "retrieve verification" do
      verification = Verification.retrieve("id")
      assert_requested :get, "#{Telnyx.api_base}/v2/verifications/id"
      assert_kind_of Verification, verification
    end

    should "send verification code" do
      Verification.submit_code code: "12345", phone_number: "+13035551234", verify_profile_id: "12ade33a-21c0-473b-b055-b3c836e1c292"

      assert_requested :post, "#{Telnyx.api_base}/v2/verifications/by_phone_number/+13035551234/actions/verify"
    end
  end
end
