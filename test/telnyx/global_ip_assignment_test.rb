# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class GlobalIpAssignmentTest < Test::Unit::TestCase
    setup do
      @id = "8a2088fd-efec-3c9b-b5b5-a0924b842fbb"
    end
    should "list ip connections" do
      global_ip_assignments = GlobalIpAssignment.list
      assert_requested :get, "#{Telnyx.api_base}/v2/global_ip_assignments"
      assert_kind_of ListObject, global_ip_assignments
      assert_kind_of TelnyxObject, global_ip_assignments.first
    end

    should "create ip connection" do
      GlobalIpAssignment.create
      assert_requested :post, "#{Telnyx.api_base}/v2/global_ip_assignments"
    end

    should "retrieve ip connection" do
      ip_ass = GlobalIpAssignment.retrieve(@id)
      assert_requested :get, "#{Telnyx.api_base}/v2/global_ip_assignments/#{@id}"
      assert_kind_of GlobalIpAssignment, ip_ass
    end

    should "delete ip connection" do
      ip_ass = GlobalIpAssignment.retrieve(@id)
      id = ip_ass.id.gsub(/\s+/, "+").freeze
      ip_ass.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/global_ip_assignments/#{id}"
    end

    should "update ip connection" do
      ip_ass = GlobalIpAssignment.retrieve(@id)

      ip_ass.active = false
      id = ip_ass.id.gsub(/\s+/, "+").freeze
      ip_ass.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/global_ip_assignments/#{id}"
    end
  end
end
