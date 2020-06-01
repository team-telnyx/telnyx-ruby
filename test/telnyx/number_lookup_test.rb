
# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class NumberLookupTest < Test::Unit::TestCase
    test "retrieve number" do
      number = "555-555-5555"
      stub = stub_request(:get, "#{Telnyx.api_base}/v2/number_lookup/#{number}")
             .to_return(body: { data: { record_type: "number_lookup" } }.to_json)
      nl = NumberLookup.retrieve number

      assert_requested stub
      assert_kind_of NumberLookup, nl
    end
  end
end
