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
        vertical: "COMMUNICATIONS"
      )
      assert_requested :post, "#{Telnyx.api_base}/10dlc/brand"
      assert brand.is_a?(Telnyx::Brand)
    end

    should "be listable" do
      brand = Telnyx::Brand.list
      assert_requested :get, "#{Telnyx.api_base}/10dlc/brand"
      assert brand.data.is_a?(Array)
      assert brand.data[0].is_a?(Telnyx::Brand)
    end

    should "be retrievable" do
      brand = Telnyx::Brand.retrieve("123")
      assert_requested :get, "#{Telnyx.api_base}/10dlc/brand/123"
      assert brand.is_a?(Telnyx::Brand)
    end

    should "be saveable" do
      brand = Telnyx::Brand.retrieve("123")
      brand.name = "Updated Brand"
      brand.save
      assert_requested :patch, "#{Telnyx.api_base}/10dlc/brand/123"
    end

    should "be deletable" do
      brand = Telnyx::Brand.retrieve("123")
      brand.delete
      assert_requested :delete, "#{Telnyx.api_base}/10dlc/brand/123"
    end
    should "get feedback" do
      brand_feedback = Telnyx::Brand.get_feedback("123")
      assert_requested :get, "#{Telnyx.api_base}/brand/123/feedback"
      assert brand_feedback.is_a?(Telnyx::Brand)
    end

    should "list external vettings" do
      external_vettings = Telnyx::Brand.list_external_vettings("123")
      assert_requested :get, "#{Telnyx.api_base}/brand/123/externalVetting"
      assert external_vettings.is_a?(Telnyx::Brand)
    end

    should "order external vetting" do
      external_vetting = Telnyx::Brand.order_external_vetting("123", {})
      assert_requested :post, "#{Telnyx.api_base}/brand/123/externalVetting"
      assert external_vetting.is_a?(Telnyx::Brand)
    end

    should "import external vetting record" do
      external_vetting_record = Telnyx::Brand.import_external_vetting_record("123", {})
      assert_requested :put, "#{Telnyx.api_base}/brand/123/externalVetting"
      assert external_vetting_record.is_a?(Telnyx::Brand)
    end

    should "revet brand" do
      revet = Telnyx::Brand.revet("123")
      assert_requested :put, "#{Telnyx.api_base}/brand/123/revet"
      assert revet.is_a?(Telnyx::Brand)
    end
  end
end
