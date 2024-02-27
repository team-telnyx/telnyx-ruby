# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class TelnyxNumberOrderTest < Test::Unit::TestCase
    should "be listable" do
      number_orders = Telnyx::NumberOrder.list
      assert_requested :get, "#{Telnyx.api_base}/v2/number_orders"
      assert_kind_of Telnyx::ListObject, number_orders
      assert_kind_of Telnyx::TelnyxObject, number_orders.first
    end

    should "be creatable" do
      Telnyx::NumberOrder.create(
        phone_numbers: [
          { "phone_number" => "+12223334444", "regulatory_requirements" => [] },
        ],
        customer_reference: "MY REF 001",
        connection_id: "442191469269222625"
      )
      assert_requested :post, "#{Telnyx.api_base}/v2/number_orders"
    end

    should "be retrievable" do
      number_order = Telnyx::NumberOrder.retrieve "123"
      assert_requested :get, "#{Telnyx.api_base}/v2/number_orders/123"
      assert_kind_of Telnyx::NumberOrder, number_order
    end

    should "be savable" do
      number_order = Telnyx::NumberOrder.retrieve "123"
      number_order.customer_reference = "foobar"
      id = number_order.id.freeze
      number_order.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/number_orders/#{id}"
      assert_kind_of Telnyx::NumberOrder, number_order
    end
  end
end
