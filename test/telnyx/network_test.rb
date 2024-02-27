# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class NetworkTest < Test::Unit::TestCase
    setup do
      @id = "ebb9daec-eb8a-8caa-0105-2b6f56f5a11c"
    end
    should "be creatable" do
      Telnyx::Network.create(name: "Foo")
      assert_requested :post, "#{Telnyx.api_base}/v2/networks"
    end

    should "be listable" do
      networks = Telnyx::Network.list
      assert_requested :get, "#{Telnyx.api_base}/v2/networks"
      assert networks.data.is_a?(Array)
    end

    should "be retrievable" do
      Telnyx::Network.retrieve(@id)
      assert_requested :get, "#{Telnyx.api_base}/v2/networks/#{@id}"
    end

    should "be updatable" do
      network = Network.retrieve(@id)

      network.name = "new name"
      id = network.id.freeze
      network.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/networks/#{id}"
    end

    should "be deletable" do
      network = Network.retrieve(@id)
      id = network.id.freeze
      network.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/networks/#{id}"
    end

    should "list network_interfaces" do
      network = Network.retrieve(@id)
      id = network.id.freeze
      network.network_interfaces
      assert_requested :get, "#{Telnyx.api_base}/v2/networks/#{id}/network_interfaces"
    end
  end
end
