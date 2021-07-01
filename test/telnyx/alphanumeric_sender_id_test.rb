# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class AlphanumericSenderIdTest < Test::Unit::TestCase
    setup do
      omit "alphanumeric ids mock spec removed"
    end

    should "be listable" do
      alphanumeric_sender_ids = Telnyx::AlphanumericSenderId.list
      assert_requested :get, "#{Telnyx.api_base}/v2/alphanumeric_sender_ids"
      assert_kind_of Array, alphanumeric_sender_ids.data
      assert_kind_of Telnyx::AlphanumericSenderId, alphanumeric_sender_ids.first
    end

    should "be retrievable" do
      alphanumeric_sender_id = Telnyx::AlphanumericSenderId.retrieve("123")
      assert_requested :get, "#{Telnyx.api_base}/v2/alphanumeric_sender_ids/123"
      assert_kind_of Telnyx::AlphanumericSenderId, alphanumeric_sender_id
    end

    should "be creatable" do
      alphanumeric_sender_id = Telnyx::AlphanumericSenderId.create(sender_id: "TelnyxID")
      assert_requested :post, "#{Telnyx.api_base}/v2/alphanumeric_sender_ids"
      assert_kind_of Telnyx::AlphanumericSenderId, alphanumeric_sender_id
    end

    should "be deletable" do
      alphanumeric_sender_id = Telnyx::AlphanumericSenderId.retrieve("123")
      alphanumeric_sender_id = alphanumeric_sender_id.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/alphanumeric_sender_ids/123"
      assert alphanumeric_sender_id.is_a?(Telnyx::AlphanumericSenderId)
    end
  end
end
