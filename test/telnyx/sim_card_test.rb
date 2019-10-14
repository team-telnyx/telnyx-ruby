# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class SimCardTest < Test::Unit::TestCase
    should "retrieve sim card" do
      stub = stub_request(:get, "#{Telnyx.api_base}/v2/sim_cards/123")
             .to_return(body: JSON.generate(data: { record_type: "sim_card", id: "123" }))
      sim = Telnyx::SimCard.retrieve "123"
      assert_requested stub
      assert_kind_of Telnyx::SimCard, sim
    end

    should "list sim cards" do
      stub = stub_request(:get, "#{Telnyx.api_base}/v2/sim_cards")
             .to_return(body: JSON.generate(data: (1..5).map { |i| { record_type: "sim_card", id: i } }))
      simlist = Telnyx::SimCard.list
      assert_requested stub
      assert_kind_of Telnyx::ListObject, simlist
    end

    should "save sim card" do
      stub_request(:get, "#{Telnyx.api_base}/v2/sim_cards/123")
        .to_return(body: JSON.generate(data: { record_type: "sim_card", id: "123" }))
      stub = stub_request(:patch, "#{Telnyx.api_base}/v2/sim_cards/123")
             .to_return(body: JSON.generate(data: { record_type: "sim_card", id: "123" }))
      sim = Telnyx::SimCard.retrieve "123"
      sim.save
      assert_requested stub
    end

    context "actions" do
      should "deactivate" do
        stub_request(:get, "#{Telnyx.api_base}/v2/sim_cards/123")
          .to_return(body: JSON.generate(data: { record_type: "sim_card", id: "123" }))

        stub = stub_request(:post, "#{Telnyx.api_base}/v2/sim_cards/123/actions/deactivate")
               .to_return(body: JSON.generate(errors: []), status: 202)

        sim = Telnyx::SimCard.retrieve "123"
        sim.deactivate
        assert_requested stub
      end

      should "activate" do
        stub_request(:get, "#{Telnyx.api_base}/v2/sim_cards/123")
          .to_return(body: JSON.generate(data: { record_type: "sim_card", id: "123" }))

        stub = stub_request(:post, "#{Telnyx.api_base}/v2/sim_cards/123/actions/activate")
               .to_return(body: JSON.generate(errors: []), status: 202)

        sim = Telnyx::SimCard.retrieve "123"
        sim.activate
        assert_requested stub
      end
    end
  end
end
