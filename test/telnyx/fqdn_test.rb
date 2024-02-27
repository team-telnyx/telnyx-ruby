# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class FQDNTest < Test::Unit::TestCase
    setup do
      @id = "labore"
    end
    should "list fqdns" do
      fqdn = FQDN.list
      assert_requested :get, "#{Telnyx.api_base}/v2/fqdns"
      assert_kind_of ListObject, fqdn
      assert_kind_of TelnyxObject, fqdn.first
    end

    should "create fqdn" do
      FQDN.create fqdn: "example.com", dns_record_type: "A", connection_id: "abc"
      assert_requested :post, "#{Telnyx.api_base}/v2/fqdns"
    end

    should "retrieve fqdn" do
      fqdn = FQDN.retrieve(@id)
      assert_requested :get, "#{Telnyx.api_base}/v2/fqdns/#{@id}"
      assert_kind_of FQDN, fqdn
    end

    should "delete fqdn" do
      fqdn = FQDN.retrieve(@id)
      id = fqdn.id.gsub(/\s+/, "+").freeze

      fqdn.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/fqdns/#{id}"
    end

    should "update fqdn" do
      fqdn = FQDN.retrieve(@id)

      fqdn.fqdn = "example.com"
      id = fqdn.id.gsub(/\s+/, "+").freeze
      fqdn.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/fqdns/#{id}"
    end
  end
end
