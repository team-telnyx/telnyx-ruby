# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class MessagingPhoneNumberTest < Test::Unit::TestCase
    should "be listable" do
      messaging_phone_numbers = Telnyx::MessagingPhoneNumber.list
      # assert_requested :get, "#{Telnyx.api_base}/v2/messaging_phone_numbers"
      assert_requested :get, "#{Telnyx.api_base}/v2/phone_numbers/messaging"
      assert messaging_phone_numbers.data.is_a?(Array)
      assert messaging_phone_numbers.first.is_a?(Telnyx::MessagingPhoneNumber)
    end

    should "be retrievable" do
      messaging_phone_number = Telnyx::MessagingPhoneNumber.retrieve("123")
      # assert_requested :get, "#{Telnyx.api_base}/v2/messaging_phone_numbers/123"
      assert_requested :get, "#{Telnyx.api_base}/v2/phone_numbers/123/messaging"
      assert messaging_phone_number.is_a?(Telnyx::MessagingPhoneNumber)
    end

    should "be saveable" do
      messaging_phone_number = Telnyx::MessagingPhoneNumber.retrieve("123")
      messaging_phone_number.messaging_profile_id = "value"
      messaging_phone_number.save
      # assert_requested :patch, "#{Telnyx.api_base}/v2/messaging_phone_numbers/#{messaging_phone_number.id}"
      assert_requested :patch, "#{Telnyx.api_base}/v2/phone_numbers/#{messaging_phone_number.id}/messaging"
    end

    should "be updateable" do
      messaging_phone_number = Telnyx::MessagingPhoneNumber.update("123", messaging_profile_id: "456")
      # assert_requested :patch, "#{Telnyx.api_base}/v2/messaging_phone_numbers/123"
      assert_requested :patch, "#{Telnyx.api_base}/v2/phone_numbers/123/messaging"
      assert messaging_phone_number.is_a?(Telnyx::MessagingPhoneNumber)
    end
  end
end
