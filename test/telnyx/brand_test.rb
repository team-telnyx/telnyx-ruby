# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class BrandTest < Test::Unit::TestCase
    should "be retrievable" do
      brand = Telnyx::Brand.retrieve("123")
      assert_requested :get, "#{Telnyx.api_base}/v2/10dlc/brand/123"
      assert brand.is_a?(Telnyx::Brand)
    end

    should "be creatable" do
      brand = Telnyx::Brand.create(
        name: "Test Brand",
        ein: "12-3456789"
      )
      assert_requested :post, "#{Telnyx.api_base}/v2/10dlc/brand"
      assert brand.is_a?(Telnyx::Brand)
    end

    should "be saveable" do
      brand = Telnyx::Brand.retrieve("123")
      brand.name = "New Brand Name"
      brand.save
      assert_requested :post, "#{Telnyx.api_base}/v2/10dlc/brand/123"
    end

    should "be deletable" do
      brand = Telnyx::Brand.retrieve("123")
      brand = brand.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/10dlc/brand/123"
      assert brand.is_a?(Telnyx::Brand)
    end

    should "be listable" do
      brands = Telnyx::Brand.list
      assert_requested :get, "#{Telnyx.api_base}/v2/10dlc/brand"
      assert brands.data.is_a?(Array)
      assert brands.data[0].is_a?(Telnyx::Brand)
    end

    should "be able to order external vetting" do
      brand = Telnyx::Brand.retrieve("123")
      vetting = brand.external_vetting(
        vetting_provider: "Aegis Mobile",
        vetting_score: 85
      )
      assert_requested :post, "#{Telnyx.api_base}/v2/10dlc/brand/123/externalVetting"
      assert vetting.is_a?(Telnyx::TelnyxObject)
    end
  end
end
