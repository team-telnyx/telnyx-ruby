# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class NetworkTest < Test::Unit::TestCase
    # should "be creatable" do
    #   network = Telnyx::Network.create(name: "Foo")
    #   assert_requested :post, "#{Telnyx.api_base}/v2/networks"
    #   assert network.is_a?(Telnyx::Network)
    # end

    # should "be listable" do
    #   networks = Telnyx::Network.list
    #   assert_requested :get, "#{Telnyx.api_base}/v2/networks"
    #   assert networks.data.is_a?(Array)
    #   assert networks.first.is_a?(Telnyx::Network)
    # end

    # should "be retrievable" do
    #   exsisting_id = Telnyx::Network.list.first.id
    #   network = Telnyx::Network.retrieve(exsisting_id)
    #   assert_requested :get, "#{Telnyx.api_base}/v2/networks/#{exsisting_id}"
    #   assert network.is_a?(Telnyx::Network)
    # end

    # should "be updatable" do
    #   exsisting_id = Telnyx::Network.list.first.id
    #   stub = stub_request(:patch, "#{Telnyx.api_base}/v2/networks/#{exsisting_id}")
    #          .with(body: hash_including(name: "foo"))
    #          .to_return(body: JSON.generate(data: MessagingProfile.retrieve("123")))
    #   network = Telnyx::Network.update(exsisting_id, name: "foo1")
    #   assert_requested stub
    #   assert network.is_a?(Telnyx::Network)
    # end

    # should "be deletable" do
    #   messaging_network = Telnyx::Network.list.first
    #   messaging_network = messaging_network.delete
    #   assert_requested :delete, "#{Telnyx.api_base}/v2/networks/#{messaging_network.id}"
    #   assert messaging_network.is_a?(Telnyx::Network)
    # end
  end
end
