# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class AvailablePhoneNumberTest < Test::Unit::TestCase
    should "be listable" do
      available_phone_numbers = Telnyx::AvailablePhoneNumber.list
      assert_requested :get, "#{Telnyx.api_base}/v2/available_phone_numbers"
      assert available_phone_numbers.data.is_a?(Array)
      assert available_phone_numbers.first.is_a?(Telnyx::AvailablePhoneNumber)
    end

    should "accept params for list" do
      Telnyx::AvailablePhoneNumber.list phone_number: { starts_with: "2&&", ends_with: "ABC" }
      assert_requested(:get, /#{"#{Telnyx.api_base}/v2/available_phone_numbers"}/)
    end
  end
end
