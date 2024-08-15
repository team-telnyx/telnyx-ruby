# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class BrandTest < Test::Unit::TestCase
    should "be creatable" do
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

    should "be listable" do
      brand = Telnyx::Brand.list
      assert_requested :get, "#{Telnyx.api_base}/brand"
      assert brand.data.is_a?(Array)
      assert brand.data[0].is_a?(Telnyx::Brand)
    end

    should "be retrievable" do
      brand = Telnyx::Brand.retrieve("123")
      assert_requested :get, "#{Telnyx.api_base}/brand/123"
      assert brand.is_a?(Telnyx::Brand)
    end

    should "be saveable" do
      brand = Telnyx::Brand.retrieve("123")
      brand.name = "Updated Brand"
      brand.save
      assert_requested :patch, "#{Telnyx.api_base}/brand/123"
    end

    should "be deletable" do
      brand = Telnyx::Brand.retrieve("123")
      brand.delete
      assert_requested :delete, "#{Telnyx.api_base}/brand/123"
    end
  end
end
