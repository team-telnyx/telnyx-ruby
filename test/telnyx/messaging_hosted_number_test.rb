# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class MessagingHostedNumberTest < Test::Unit::TestCase
    should "be deletable" do
      number = Telnyx::MessagingHostedNumber.retrieve("123")
      number = number.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/messaging_hosted_numbers/123"
      assert number.is_a?(Telnyx::MessagingHostedNumber)
    end
  end
end
