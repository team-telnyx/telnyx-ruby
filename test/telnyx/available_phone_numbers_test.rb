# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class AvailablePhoneNumbersTest < Test::Unit::TestCase
    should "be listable" do
      available_phone_numbers = AvailablePhoneNumbers.list
      assert_requested :get, "#{Telnyx.api_base}/v2/available_phone_numbers"
      assert available_phone_numbers.is_a?(ListObject)
      assert available_phone_numbers[:data].is_a?(Array)
      assert available_phone_numbers.first.is_a?(Telnyx::AvailablePhoneNumbers)
    end

    should "be lists of block phone numbers" do
      blocks = AvailablePhoneNumbers.blocks
      assert blocks.is_a?(ListObject)
      assert blocks[:data].is_a?(Array)
    end
  end
end
