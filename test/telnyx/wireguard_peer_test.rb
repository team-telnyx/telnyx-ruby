# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class WireguardPeerTest < Test::Unit::TestCase
    setup do
      @id = "d25f43b3-aea3-6a5d-7a1b-d83e5c100cce"
      @wireguard_peer = WireguardPeer.retrieve @id
    end
    should "be retrievable" do
      assert_requested(:get, "#{Telnyx.api_base}/v2/wireguard_peers/#{@id}")
      assert_kind_of WireguardPeer, @wireguard_peer
    end

    should "be listable" do
      omit "ID req that doesn't exist"
      wireguard_peers = WireguardPeer.list
      assert_requested(:get, "#{Telnyx.api_base}/v2/wireguard_peers")
      assert_kind_of Telnyx::ListObject, wireguard_peers
    end

    should "be updatable" do
      @wireguard_peer.wireguard_peer = "new code"
      @wireguard_peer.messaging_profile_id = "d25f43b3-aea3-6a5d-7a1b-d83e5c100cc6"
      @wireguard_peer.save
      assert_requested(:get, "#{Telnyx.api_base}/v2/wireguard_peers/#{@id}")
    end

    should "be deletable" do
      id = @wireguard_peer.id.freeze
      @wireguard_peer.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/wireguard_peers/#{id}"
    end

    should "be creatable" do
      omit "ID req that doesn't exist"
      WireguardPeer.create(wireguard_interface_id: "a25f43b3-aea3-6a5d-7a1b-d83e5c100cc6")
      assert_requested :post, "#{Telnyx.api_base}/v2/wireguard_peers"
    end

    should "be listable allowIps" do
      id = @wireguard_peer.id.freeze
      @wireguard_peer.allowed_ips
      assert_requested(:get, "#{Telnyx.api_base}/v2/wireguard_peers/#{id}/allowed_ips")
    end
  end
end
