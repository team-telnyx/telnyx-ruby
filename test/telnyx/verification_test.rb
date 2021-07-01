# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class VerificationTest < Test::Unit::TestCase
    should "create verification" do
      Verification.call phone_number: "+15555555555", twofa_profile_id: "1234", type: "sms", verify_profile_id: "foobar"
      assert_requested :post, "#{Telnyx.api_base}/v2/verifications/call"
    end

    should "retrieve verification" do
      verification = Verification.retrieve("id")
      assert_requested :get, "#{Telnyx.api_base}/v2/verifications/id"
      assert_kind_of Verification, verification
    end

    should "send verification code" do
      Verification.submit_code code: "12345", phone_number: "+13035551234"

      assert_requested :post, "#{Telnyx.api_base}/v2/verifications/by_phone_number/+13035551234/actions/verify"
    end
  end
end
