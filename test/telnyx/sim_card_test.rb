# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class SimCardTest < Test::Unit::TestCase
    setup do
      @id = "d25f43b3-aea3-6a5d-7a1b-d83e5c100cce"
    end
    should "retrieve sim card" do
      sim = Telnyx::SimCard.retrieve @id
      assert_requested(:get, "#{Telnyx.api_base}/v2/sim_cards/#{@id}")
      assert_kind_of Telnyx::SimCard, sim
    end

    should "list sim cards" do
      simlist = Telnyx::SimCard.list
      assert_requested(:get, "#{Telnyx.api_base}/v2/sim_cards")
      assert_kind_of Telnyx::ListObject, simlist
    end

    should "save sim card" do
      sim = Telnyx::SimCard.retrieve @id
      sim.save
      assert_requested(:get, "#{Telnyx.api_base}/v2/sim_cards/#{@id}")
    end

    should "register sim card" do
      Telnyx::SimCard.register(registration_codes: %w[1234567890 123456332601])
      assert_requested(:post, "#{Telnyx.api_base}/v2/actions/register/sim_cards")
    end

    context "actions" do
      should "disable" do
        sim = Telnyx::SimCard.retrieve @id
        assert_requested(:get, "#{Telnyx.api_base}/v2/sim_cards/#{@id}")
      end

      should "enable" do
        sim = Telnyx::SimCard.retrieve @id
        assert_requested(:get, "#{Telnyx.api_base}/v2/sim_cards/#{@id}")
      end
    end
  end
end
