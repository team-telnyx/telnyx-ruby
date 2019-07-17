# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Telnyx
  class MessagingShortCodeTest < Test::Unit::TestCase
    should "be listable" do
      messaging_short_codes = Telnyx::MessagingShortCode.list
      assert_requested :get, "#{Telnyx.api_base}/v2/messaging_short_codes"
      assert messaging_short_codes.data.is_a?(Array)
      assert messaging_short_codes.first.is_a?(Telnyx::MessagingShortCode)
    end

    should "be retrievable" do
      messaging_short_code = Telnyx::MessagingShortCode.retrieve("123")
      assert_requested :get, "#{Telnyx.api_base}/v2/messaging_short_codes/123"
      assert messaging_short_code.is_a?(Telnyx::MessagingShortCode)
    end

    should "be saveable" do
      messaging_short_code = Telnyx::MessagingShortCode.retrieve("123")
      messaging_short_code.messaging_profile_id = "value"
      messaging_short_code.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/messaging_short_codes/#{messaging_short_code.id}"
    end

    should "be updateable" do
      messaging_short_code = Telnyx::MessagingShortCode.update("123", messaging_profile_id: "foo")
      assert_requested :patch, "#{Telnyx.api_base}/v2/messaging_short_codes/123"
      assert messaging_short_code.is_a?(Telnyx::MessagingShortCode)
    end
  end
end
