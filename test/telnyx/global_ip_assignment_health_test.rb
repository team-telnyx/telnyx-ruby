# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class GlobalIpAssignmentHealthTest < Test::Unit::TestCase
    should "list ip health" do
      assignment_health = GlobalIpAssignmentHealth.list
      assert_requested :get, "#{Telnyx.api_base}/v2/global_ip_assignment_health"
      assert_kind_of ListObject, assignment_health
      assert_kind_of TelnyxObject, assignment_health.first
    end
  end
end
