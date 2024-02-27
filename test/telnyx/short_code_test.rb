# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class ShortCodeTest < Test::Unit::TestCase
    setup do
      @id = "d25f43b3-aea3-6a5d-7a1b-d83e5c100cce"
    end
    should "retrieve short code" do
      short_code = ShortCode.retrieve @id
      assert_requested(:get, "#{Telnyx.api_base}/v2/short_codes/#{@id}")
      assert_kind_of ShortCode, short_code
    end

    should "list short codes" do
      short_codes = ShortCode.list
      assert_requested(:get, "#{Telnyx.api_base}/v2/short_codes")
      assert_kind_of Telnyx::ListObject, short_codes
    end

    should "update short code" do
      short_code = ShortCode.retrieve @id
      short_code.short_code = "new code"
      short_code.messaging_profile_id = "d25f43b3-aea3-6a5d-7a1b-d83e5c100cc6"
      short_code.save
      assert_requested(:get, "#{Telnyx.api_base}/v2/short_codes/#{@id}")
    end
  end
end
