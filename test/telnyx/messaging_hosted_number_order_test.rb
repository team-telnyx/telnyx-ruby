# frozen_string_literal: true

module Telnyx
  class MessagingHostedNumberOrderTest < Test::Unit::TestCase
    should "be retrievable" do
      order = Telnyx::MessagingHostedNumberOrder.retrieve("123")
      assert_requested :get, "#{Telnyx.api_base}/v2/messaging_hosted_number_orders/123"
      assert order.is_a?(Telnyx::MessagingHostedNumberOrder)
    end

    should "be able to upload a file" do
      order = Telnyx::MessagingHostedNumberOrder.retrieve("123")
      file_upload = order.upload_file(
        loa: File.new("path/to/loa.pdf"),
        bill: File.new("path/to/bill.pdf")
      )
      assert_requested :post, "#{Telnyx.api_base}/v2/messaging_hosted_number_orders/123/actions/file_upload"
      assert file_upload.is_a?(Telnyx::TelnyxObject)
    end

    should "be creatable" do
      order = Telnyx::MessagingHostedNumberOrder.create(
        phone_number: "+1234567890",
        messaging_profile_id: "456"
      )
      assert_requested :post, "#{Telnyx.api_base}/v2/messaging_hosted_number_orders"
      assert order.is_a?(Telnyx::MessagingHostedNumberOrder)
    end

    should "be saveable" do
      order = Telnyx::MessagingHostedNumberOrder.retrieve("123")
      order.phone_number = "+0987654321"
      order.save
      assert_requested :post, "#{Telnyx.api_base}/v2/messaging_hosted_number_orders/123"
    end

    should "be listable" do
      orders = Telnyx::MessagingHostedNumberOrder.list
      assert_requested :get, "#{Telnyx.api_base}/v2/messaging_hosted_number_orders"
      assert orders.data.is_a?(Array)
      assert orders.data[0].is_a?(Telnyx::MessagingHostedNumberOrder)
    end
  end
end
