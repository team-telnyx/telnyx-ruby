# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class MessageNumberPoolTest < Test::Unit::TestCase
    should "be creatable" do
      message = Telnyx::MessageNumberPool.create(
        to: "+18005554000",
        from: "+18005559000",
        text: "Hello, World!",
        messaging_profile_id: "PROFILE_ID"
      )
      assert_requested :post, "#{Telnyx.api_base}/v2/messages/number_pool"
      assert message.is_a?(Telnyx::Message)
    end
  end
end
