# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class AddressTest < Test::Unit::TestCase
    should "list addresses" do
      stub = stub_request(:get, "#{Telnyx.api_base}/v2/addresses")
             .to_return(body: JSON.generate(data: [FIXTURE]))
      addresses = Address.list
      # assert_requested :get, "#{Telnyx.api_base}/v2/addresses"
      assert_requested stub
      assert_kind_of ListObject, addresses
      assert_kind_of Address, addresses.first
    end

    should "create address" do
      stub = stub_request(:post, "#{Telnyx.api_base}/v2/addresses")
             .to_return(body: JSON.generate(data: FIXTURE))
      address = Address.create
      # assert_requested :post, "#{Telnyx.api_base}/v2/addresses"
      assert_requested stub
      assert_kind_of Address, address
    end

    should "retrieve address" do
      stub = stub_request(:get, "#{Telnyx.api_base}/v2/addresses/id")
             .to_return(body: JSON.generate(data: FIXTURE))
      address = Address.retrieve("id")
      # assert_requested :get, "#{Telnyx.api_base}/v2/addresses/id"
      assert_requested stub
      assert_kind_of Address, address
    end

    should "delete address" do
      stub_request(:get, "#{Telnyx.api_base}/v2/addresses/id")
        .to_return(body: JSON.generate(data: FIXTURE))
      stub = stub_request(:delete, "#{Telnyx.api_base}/v2/addresses/id")
             .to_return(body: JSON.generate(data: FIXTURE))
      address = Address.retrieve("id")

      address.delete
      # assert_requested :delete, "#{Telnyx.api_base}/v2/addresses/id"
      assert_requested stub
    end

    FIXTURE = {
      "address_book" => false,
      "administrative_area" => "IL",
      "borough" => "Guadalajara",
      "business_name" => "Toy-O'Kon",
      "country_code" => "us",
      "created_at" => "2018-02-02T22:25:27.521Z",
      "extended_address" => "Suite 123",
      "first_name" => "Alfred",
      "id" => "id",
      "last_name" => "Foster",
      "locality" => "Chicago",
      "neighborhood" => "Ciudad de los deportes",
      "phone_number" => "+12125559000",
      "postal_code" => 2904,
      "record_type" => "address",
      "street_address" => "457 Flatley Stream",
      "updated_at" => "2018-02-02T22:25:27.521Z",
    }.freeze
  end
end
