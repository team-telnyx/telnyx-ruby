# frozen_string_literal: true

module Telnyx
  class Verification2FATest < Test::Unit::TestCase
    should "create two_fa_verification" do
      Verification2FA.create phone_number: "+15555555555", twofa_profile_id: "1234", type: "sms"
      assert_requested :post, "#{Telnyx.api_base}/v2/2fa_verifications"
    end

    should "retrieve two_fa_verification" do
      two_fa_verification = Verification2FA.retrieve("id")
      assert_requested :get, "#{Telnyx.api_base}/v2/2fa_verifications/id"
      assert_kind_of Verification2FA, two_fa_verification
    end

    should "send verification code" do
      Verification2FA.submit_code code: "12345", phone_number: "+13035551234"

      assert_requested :post, "#{Telnyx.api_base}/v2/2fa_verifications/by_tn/+13035551234/actions/verify"
    end
  end
end
