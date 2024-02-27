# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class WireguardInterfaceTest < Test::Unit::TestCase
    setup do
      @id = "ebb9daec-eb8a-8caa-0105-2b6f56f5a11c"
      @wireguard_interface = Telnyx::WireguardInterface.retrieve(@id)
    end
    should "be creatable" do
      Telnyx::WireguardInterface.create(network_id: "ce7d6838-b281-1b01-9a17-bc23c19ccad4", region_code: "foo")
      assert_requested :post, "#{Telnyx.api_base}/v2/wireguard_interfaces"
    end

    should "be listable" do
      wireguard_interfaces = WireguardInterface.list
      assert_requested :get, "#{Telnyx.api_base}/v2/wireguard_interfaces"
      assert wireguard_interfaces.data.is_a?(Array)
    end

    should "be retrievable" do
      assert_requested :get, "#{Telnyx.api_base}/v2/wireguard_interfaces/#{@id}"
    end

    should "be deletable" do
      id = @wireguard_interface.id.freeze
      @wireguard_interface.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/wireguard_interfaces/#{id}"
    end
  end
end
