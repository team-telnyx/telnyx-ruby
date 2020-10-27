# frozen_string_literal: true

module Telnyx
  class Profile2FATest < Test::Unit::TestCase
    should "list 2fa_profiles" do
      two_fa_profile = Profile2FA.list
      assert_requested :get, "#{Telnyx.api_base}/v2/2fa_profiles"
      assert_kind_of ListObject, two_fa_profile
      assert_kind_of Profile2FA, two_fa_profile.first
    end

    should "create two_fa_profile" do
      Profile2FA.create name: "test"
      assert_requested :post, "#{Telnyx.api_base}/v2/2fa_profiles"
    end

    should "retrieve two_fa_profile" do
      two_fa_profile = Profile2FA.retrieve("id")
      assert_requested :get, "#{Telnyx.api_base}/v2/2fa_profiles/id"
      assert_kind_of Profile2FA, two_fa_profile
    end

    should "update two_fa_profile" do
      two_fa_profile = Profile2FA.retrieve("id")

      two_fa_profile.name = "123"
      two_fa_profile.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/2fa_profiles/id"
    end
  end
end
