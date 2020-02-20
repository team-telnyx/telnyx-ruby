# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class FQDNTest < Test::Unit::TestCase
    should "list fqdns" do
      fqdn = FQDN.list
      assert_requested :get, "#{Telnyx.api_base}/v2/fqdns"
      assert_kind_of ListObject, fqdn
      assert_kind_of FQDN, fqdn.first
    end

    should "create fqdn" do
      FQDN.create fqdn: "example.com"
      assert_requested :post, "#{Telnyx.api_base}/v2/fqdns"
    end

    should "retrieve fqdn" do
      fqdn = FQDN.retrieve("id")
      assert_requested :get, "#{Telnyx.api_base}/v2/fqdns/id"
      assert_kind_of FQDN, fqdn
    end

    should "delete fqdn" do
      fqdn = FQDN.retrieve("id")

      fqdn.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/fqdns/id"
    end

    should "update fqdn" do
      fqdn = FQDN.retrieve("id")

      fqdn.fqdn = "example.com"
      fqdn.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/fqdns/id"
    end
  end
end
