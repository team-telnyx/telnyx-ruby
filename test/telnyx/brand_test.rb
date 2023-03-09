# frozen_string_literal: true

require_relative "../test_helper"
module Telnyx
  class BrandTest < Test::Unit::TestCase
    should "create brand" do
        Brand.create( entityType: "PRIVATE_PROFIT", displayName: "Example Company", country: "US", email: "examplename@examplecompany.com",  vertical: "TECHNOLOGY")
        assert_requested :post, "#{Telnyx.api_base}/10dlc/brand"
    end

    should "list brands" do
      brands = Brand.list
      assert_requested :get, "#{Telnyx.api_base}/10dlc/brand"
      assert_kind_of ListObject, brands
      assert_kind_of Brand, brands.first
    end

    should "retrieve brand" do
      brand = Brand.retrieve "id"
      assert_requested :get, "#{Telnyx.api_base}/10dlc/brand/#{brand.id}"
      assert_kind_of Brand, brand
    end

    should "update brand" do
      brand = Brand.retrieve("id")

      brand.entityType = "PRIVATE_PROFIT!"
      brand.save
      assert_requested :put, "#{Telnyx.api_base}/10dlc/brand/#{brand.id}"
    end

  end
end
