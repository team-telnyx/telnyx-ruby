# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class SimCardOrderTest < Test::Unit::TestCase
    setup do
      @id = "d25f43b3-aea3-6a5d-7a1b-d83e5c100cce"
    end
    should "retrieve sim card order" do
      sim_card_order = SimCardOrder.retrieve @id
      assert_requested(:get, "#{Telnyx.api_base}/v2/sim_card_orders/#{@id}")
      assert_kind_of SimCardOrder, sim_card_order
    end

    should "list sim card orders" do
      simlist = SimCardOrder.list
      assert_requested(:get, "#{Telnyx.api_base}/v2/sim_card_orders")
      assert_kind_of Telnyx::ListObject, simlist
    end

    should "create sim card orders" do
      SimCardOrder.create(address_id: "123", quantity: 123)
      assert_requested(:post, "#{Telnyx.api_base}/v2/sim_card_orders")
    end
  end
end
