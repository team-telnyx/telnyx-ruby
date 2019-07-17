# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Telnyx
  class MessageTest < Test::Unit::TestCase
    should "be retrievable" do
      message = Telnyx::Message.retrieve("123")
      assert_requested :get, "#{Telnyx.api_base}/v2/messages/123"
      assert message.is_a?(Telnyx::Message)
    end

    should "be creatable" do
      message = Telnyx::Message.create(to: "+18005554000", from: "+18005559000", text: "Hello, World!")
      assert_requested :post, "#{Telnyx.api_base}/v2/messages"
      assert message.is_a?(Telnyx::Message)
    end
  end
end
