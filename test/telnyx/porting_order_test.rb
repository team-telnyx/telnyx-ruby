# frozen_string_literal: true

require_relative "../test_helper"
module Telnyx
  class PortingOrderTest < Test::Unit::TestCase
    setup do
      @id = "759c55a4-a98b-fcd3-4029-17ebe4f0468f"
    end
    should "list porting orders" do
      porting_orders = PortingOrder.list
      assert_requested :get, "#{Telnyx.api_base}/v2/porting_orders"
      assert_kind_of ListObject, porting_orders
      assert_kind_of TelnyxObject, porting_orders.first
    end

    should "create porting order" do
      PortingOrder.create phone_numbers: %w[12223334444 12223335555]
      assert_requested :post, "#{Telnyx.api_base}/v2/porting_orders"
    end

    should "retrieve porting order" do
      porting_order = PortingOrder.retrieve @id
      assert_requested :get, "#{Telnyx.api_base}/v2/porting_orders/#{@id}"
      assert_kind_of PortingOrder, porting_order
    end

    should "delete porting order" do
      porting_order = PortingOrder.retrieve(@id)
      id = porting_order.id.freeze
      porting_order.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/porting_orders/#{id}"
    end

    should "update porting order" do
      porting_order = PortingOrder.retrieve(@id)
      id = porting_order.id.freeze
      porting_order.user_feedback.user_comment = "user comment!"
      porting_order.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/porting_orders/#{id}"
    end

    context "commands" do
      should "get loa template" do
        omit "API still in beta"
        porting_order = PortingOrder.retrieve(@id)

        porting_order.loa_template

        assert_requested :get, "#{Telnyx.api_base}/v2/porting_orders/#{porting_order.id}/loa_template"
      end

      should "get sub request" do
        porting_order = PortingOrder.retrieve(@id)

        porting_order.sub_request

        assert_requested :get, "#{Telnyx.api_base}/v2/porting_orders/#{porting_order.id}/sub_request"
      end

      should "get requirements" do
        porting_order = PortingOrder.retrieve(@id)

        req = porting_order.requirements
        req.is_a?(Array)
      end

      should "get comments" do
        porting_order = PortingOrder.retrieve(@id)

        porting_order.comments

        assert_requested :get, "#{Telnyx.api_base}/v2/porting_orders/#{porting_order.id}/comments"
      end

      should "activate porting order" do
        porting_order = PortingOrder.retrieve(@id)

        porting_order.activate

        assert_requested :post, "#{Telnyx.api_base}/v2/porting_orders/#{porting_order.id}/actions/activate"
      end

      should "fetch porting phone numbers" do
      end
    end
  end
end
