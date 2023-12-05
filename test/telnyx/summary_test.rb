# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class SummaryTest < Test::Unit::TestCase
    should "be creatable" do
      Telnyx::Summary.create(bucket: "Foo")
      assert_requested :post, "#{Telnyx.api_base}/v2/ai/summarize"
    end
  end
end
