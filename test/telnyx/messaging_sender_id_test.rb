# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Telnyx
  class MessagingSenderIdTest < Test::Unit::TestCase
    should "be listable" do
      messaging_sender_ids = Telnyx::MessagingSenderId.list
      assert_requested :get, "#{Telnyx.api_base}/v2/messaging_sender_ids"
      assert messaging_sender_ids.data.is_a?(Array)
      assert messaging_sender_ids.first.is_a?(Telnyx::MessagingSenderId)
    end

    should "be retrievable" do
      messaging_sender_id = Telnyx::MessagingSenderId.retrieve("123")
      assert_requested :get, "#{Telnyx.api_base}/v2/messaging_sender_ids/123"
      assert messaging_sender_id.is_a?(Telnyx::MessagingSenderId)
    end

    should "be creatable" do
      messaging_sender_id = Telnyx::MessagingSenderId.create(sender_id: "TelnyxID")
      assert_requested :post, "#{Telnyx.api_base}/v2/messaging_sender_ids"
      assert messaging_sender_id.is_a?(Telnyx::MessagingSenderId)
    end

    should "be saveable" do
      messaging_sender_id = Telnyx::MessagingSenderId.retrieve("123")
      messaging_sender_id.messaging_profile_id = "value"
      messaging_sender_id.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/messaging_sender_ids/#{messaging_sender_id.id}"
    end

    should "be updateable" do
      messaging_sender_id = Telnyx::MessagingSenderId.update("123", messaging_profile_id: "foo")
      assert_requested :patch, "#{Telnyx.api_base}/v2/messaging_sender_ids/123"
      assert messaging_sender_id.is_a?(Telnyx::MessagingSenderId)
    end

    should "be deletable" do
      messaging_sender_id = Telnyx::MessagingSenderId.retrieve("123")
      messaging_sender_id = messaging_sender_id.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/messaging_sender_ids/#{messaging_sender_id.id}"
      assert messaging_sender_id.is_a?(Telnyx::MessagingSenderId)
    end
  end
end
