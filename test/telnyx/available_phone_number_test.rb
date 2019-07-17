# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Telnyx
  class AvailablePhoneNumberTest < Test::Unit::TestCase
    should "be listable" do
      available_phone_numbers = Telnyx::AvailablePhoneNumber.list
      assert_requested :get, "#{Telnyx.api_base}/v2/available_phone_numbers"
      assert available_phone_numbers.data.is_a?(Array)
      assert available_phone_numbers.first.is_a?(Telnyx::AvailablePhoneNumber)
    end
  end
end
