# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class OtaUpdateTest < Test::Unit::TestCase
    should "be retrievable" do
      ota_update = OtaUpdate.retrieve "12345"
      assert_requested :get, "#{Telnyx.api_base}/v2/ota_updates/12345"
      assert_kind_of OtaUpdate, ota_update
    end

    should "be listable" do
      ota_updates = OtaUpdate.list
      assert_requested :get, "#{Telnyx.api_base}/v2/ota_updates"
      assert_kind_of ListObject, ota_updates
      assert_kind_of OtaUpdate, ota_updates.first
    end
  end
end
