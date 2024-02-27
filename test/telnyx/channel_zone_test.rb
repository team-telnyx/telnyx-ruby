# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class ChannelZoneTest < Test::Unit::TestCase
    should "list channel zones" do
      channel_zones = ChannelZone.list
      assert_requested :get, "#{Telnyx.api_base}/v2/channel_zones"
      assert_kind_of ListObject, channel_zones
      assert_kind_of TelnyxObject, channel_zones.first
    end
  end
end
