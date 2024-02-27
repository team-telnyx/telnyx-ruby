# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class MessageTest < Test::Unit::TestCase
    should "be retrievable" do
      message = Telnyx::Message.retrieve("24b1cc47-fd1e-848b-feb7-65f9d18cca13")
      assert_requested :get, "#{Telnyx.api_base}/v2/messages/24b1cc47-fd1e-848b-feb7-65f9d18cca13"
      assert message.is_a?(Telnyx::Message)
    end

    should "be creatable" do
      message = Telnyx::Message.create(to: "+18005554000", from: "+18005559000", text: "Hello, World!")
      assert_requested :post, "#{Telnyx.api_base}/v2/messages"
      assert message.is_a?(Telnyx::Message)
    end
  end
end
