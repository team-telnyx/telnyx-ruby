# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class VerifyProfileTest < Test::Unit::TestCase
    setup do
      @id = "080e8523-3b29-439b-c08c-edd4b0ec719e"
    end
    should "list verify_profiles" do
      verify_profile = VerifyProfile.list
      assert_requested :get, "#{Telnyx.api_base}/v2/verify_profiles"
      assert_kind_of ListObject, verify_profile
      assert_kind_of VerifyProfile, verify_profile.first
    end

    should "create verify_profile" do
      VerifyProfile.create name: "test"
      assert_requested :post, "#{Telnyx.api_base}/v2/verify_profiles"
    end

    should "retrieve verify_profile" do
      verify_profile = VerifyProfile.retrieve(@id)
      assert_requested :get, "#{Telnyx.api_base}/v2/verify_profiles/#{@id}"
      assert_kind_of VerifyProfile, verify_profile
    end

    should "update verify_profile" do
      verify_profile = VerifyProfile.retrieve(@id)
      id = verify_profile.id.freeze

      verify_profile.name = "123"
      verify_profile.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/verify_profiles/#{id}"
    end
  end
end
