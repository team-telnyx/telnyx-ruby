# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class DetailRecordTest < Test::Unit::TestCase
    should "be listable" do
      omit "Internal req test"
      detail_records = DetailRecord.list
      assert_requested :get, "#{Telnyx.api_base}/v2/detail_records"
      assert detail_records.is_a?(ListObject)
      assert detail_records[:data].is_a?(Array)
    end
  end
end
