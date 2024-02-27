# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class NumberBlockOrderTest < Test::Unit::TestCase
    should "be listable" do
      number_block_orders = Telnyx::NumberBlockOrder.list
      assert_requested :get, "#{Telnyx.api_base}/v2/number_block_orders"
      assert_kind_of Telnyx::ListObject, number_block_orders
      assert_kind_of Telnyx::TelnyxObject, number_block_orders.first
    end

    should "be creatable" do
      NumberBlockOrder.create(
        starting_number: "123",
        range: -57_315_323
      )
      assert_requested :post, "#{Telnyx.api_base}/v2/number_block_orders"
    end

    should "be retrievable" do
      number_order = Telnyx::NumberBlockOrder.retrieve "123"
      assert_requested :get, "#{Telnyx.api_base}/v2/number_block_orders/123"
      assert_kind_of Telnyx::NumberBlockOrder, number_order
    end
  end
end
