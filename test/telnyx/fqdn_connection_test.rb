
# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class FQDNConnectionTest < Test::Unit::TestCase
    should "be retrievable" do
      fqdn = FQDNConnection.retrieve "12345"
      assert_requested :get, "#{Telnyx.api_base}/v2/fqdn_connections/12345"
      assert_kind_of FQDNConnection, fqdn
    end

    should "be creatable" do
      fqdn = FQDNConnection.create
      assert_requested :post, "#{Telnyx.api_base}/v2/fqdn_connections"
      assert_kind_of FQDNConnection, fqdn
    end

    should "be listable" do
      fqdns = FQDNConnection.list
      assert_requested :get, "#{Telnyx.api_base}/v2/fqdn_connections"
      assert_kind_of Array, fqdns.data
      assert_kind_of FQDNConnection, fqdns.first
    end

    should "be saveable" do
      fqdn = FQDNConnection.retrieve("12345")
      fqdn.param = "foo"
      fqdn.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/fqdn_connections/#{fqdn.id}"
      assert_kind_of FQDNConnection, fqdn
    end

    should "be deletable" do
      fqdn = FQDNConnection.retrieve("12345")
      fqdn = fqdn.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/fqdn_connections/#{fqdn.id}"
      assert_kind_of FQDNConnection, fqdn
    end
  end
end
