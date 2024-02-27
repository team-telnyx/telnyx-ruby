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
        Telnyx::SimCard.retrieve @id
        assert_requested(:get, "#{Telnyx.api_base}/v2/sim_cards/#{@id}")
      end

      should "enable" do
        Telnyx::SimCard.retrieve @id
        assert_requested(:get, "#{Telnyx.api_base}/v2/sim_cards/#{@id}")
      end

      should "validate_registration_codes" do
        codes = ["123456780", "1231231230"]
        registration_codes = SimCard.validate_registration_codes(registration_codes: codes)
        assert_requested(:post, "#{Telnyx.api_base}/v2/sim_cards/actions/validate_registration_codes")
        registration_codes.data.is_a?(Array)
      end

      should "bulk_set_public_ips" do
        ids = ["6b14e151-8493-4fa1-8664-1cc4e6d14158"]
        SimCard.bulk_set_public_ips(sim_card_ids: ids)
        assert_requested(:post, "#{Telnyx.api_base}/v2/sim_cards/actions/bulk_set_public_ips")
      end

      should "get device_details" do
        sim = Telnyx::SimCard.retrieve @id
        id = sim.id.freeze
        sim.device_details
        assert_requested(:get, "#{Telnyx.api_base}/v2/sim_cards/#{id}/device_details")
      end

      should "get activation_codes" do
        sim = Telnyx::SimCard.retrieve @id
        id = sim.id.freeze
        sim.activation_code
        assert_requested(:get, "#{Telnyx.api_base}/v2/sim_cards/#{id}/activation_code")
      end

      should "set_public_ip" do
        omit "ID req mismatch"
        sim = Telnyx::SimCard.retrieve @id
        id = sim.id.freeze
        sim.set_public_ip
        assert_requested(:post, "#{Telnyx.api_base}/v2/sim_cards/#{id}/actions/set_public_ip")
      end

      should "set_network_preferences" do
        omit "ID req mismatch"
        sim = Telnyx::SimCard.retrieve @id
        id = sim.id.freeze
        sim.set_network_preferences
        assert_requested(:post, "#{Telnyx.api_base}/v2/sim_cards/#{id}/actions/set_network_preferences")
      end

      should "remove_public_ip" do
        omit "ID req mismatch"
        sim = Telnyx::SimCard.retrieve @id
        id = sim.id.freeze
        sim.remove_public_ip
        assert_requested(:post, "#{Telnyx.api_base}/v2/sim_cards/#{id}/actions/remove_public_ip")
      end

      should "delete_network_preferences" do
        omit "ID req mismatch"
        sim = Telnyx::SimCard.retrieve @id
        id = sim.id.freeze
        sim.delete_network_preferences
        assert_requested(:post, "#{Telnyx.api_base}/v2/sim_cards/#{id}/actions/delete_network_preferences")
      end

      should "delete network preferences" do
        SimCard.network_preferences
        assert_requested(:put, "#{Telnyx.api_base}/v2/actions/network_preferences/sim_cards")
      end
    end
  end
end
