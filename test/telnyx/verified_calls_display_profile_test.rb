# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class VerifiedCallsDisplayProfilesTest < Test::Unit::TestCase
    setup do
      @profiles = VerifiedCallsDisplayProfile.list
      @id = @profiles.first.id.freeze
    end

    should "be listable" do
      assert_requested :get, "#{Telnyx.api_base}/v2/verified_calls_display_profiles"
      assert_kind_of ListObject, @profiles
      assert_kind_of TelnyxObject, @profiles.first
      assert @profiles[:data].is_a?(Array)
    end

    should "be retrievable" do
      profile = VerifiedCallsDisplayProfile.retrieve(@id)
      assert_requested :get, "#{Telnyx.api_base}/v2/verified_calls_display_profiles/#{@id}"
      assert profile.is_a?(Telnyx::VerifiedCallsDisplayProfile)
    end

    should "create verified_calls_display_profiles verification_request" do
      omit "ID req mismatch"
      profile = VerifiedCallsDisplayProfile.retrieve(@id)
      id = profile.id.freeze
      profile.verification_request
      assert_requested :post, "#{Telnyx.api_base}/v2/verified_calls_display_profiles/#{id}/verification_request"
    end
  end
end
