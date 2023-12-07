# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class BulkCredentialTest < Test::Unit::TestCase
    should "bulk_telephony_credentials" do
      bulk = BulkCredential.bulk_telephony_credentials(tag: "id", connection_id: "1234567890")
      assert bulk.is_a?(TelnyxObject)
      assert_requested(:post, "#{Telnyx.api_base}/v2/actions/bulk/telephony_credentials")
    end

    should "purchase_esims" do
      purchase = BulkCredential.purchase_esims(amount: 10)
      assert_requested(:post, "#{Telnyx.api_base}/v2/actions/purchase/esims")
      assert purchase.is_a?(ListObject)
      assert purchase[:data].is_a?(Array)
    end
  end
end
