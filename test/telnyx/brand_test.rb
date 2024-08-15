# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class BrandTest < Test::Unit::TestCase
    should "create a brand" do
      brand = Telnyx::Brand.create(
        name: "Test Brand",
        ein: "123456789",
        ein_issuing_country: "US",
        entity_type: "PRIVATE_PROFIT",
        registration_status: "REGISTERED",
        vertical: "COMMUNICATION",
        displayName: "Test Display Name",
        country: "US",
        email: "test@example.com"
      )
      assert_requested :post, "#{Telnyx.api_base}/brand"
      assert brand.is_a?(Telnyx::Brand)
    end

    should "list brands" do
      brands = Telnyx::Brand.list
      assert_requested :get, "#{Telnyx.api_base}/brand"
      assert brands.data.is_a?(Array)
      assert brands.data[0].is_a?(Telnyx::Brand)
    end

    should "retrieve a brand" do
      brand = Telnyx::Brand.retrieve("123")
      assert_requested :get, "#{Telnyx.api_base}/brand/123"
      assert brand.is_a?(Telnyx::Brand)
    end

    should "update a brand" do
      brand = Telnyx::Brand.retrieve("123")
      brand.name = "Updated Brand"
      brand.save
      assert_requested :patch, "#{Telnyx.api_base}/brand/123"
    end

    should "delete a brand" do
      brand = Telnyx::Brand.retrieve("123")
      brand.delete
      assert_requested :delete, "#{Telnyx.api_base}/brand/123"
    end
  end
end
