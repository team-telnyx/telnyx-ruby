# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class CallControlApplicationTest < Test::Unit::TestCase
    should "list call_control_application" do
      call_control_application = CallControlApplication.list
      assert_requested :get, "#{Telnyx.api_base}/v2/call_control_applications"
      assert_kind_of ListObject, call_control_application
      assert_kind_of CallControlApplication, call_control_application.first
    end

    should "create call_control_application" do
      CallControlApplication.create webhook_event_url: 'example.com', connection_name: 'telnyx'
      assert_requested :post, "#{Telnyx.api_base}/v2/call_control_applications"
    end

    should "retrieve call_control_application" do
      call_control_application = CallControlApplication.retrieve("id")
      assert_requested :get, "#{Telnyx.api_base}/v2/call_control_applications/id"
      assert_kind_of CallControlApplication, call_control_application
    end

    should "delete call_control_application" do
      call_control_application = CallControlApplication.retrieve("id")

      call_control_application.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/call_control_applications/id"
    end

    should "update call_control_application" do
      call_control_application = CallControlApplication.retrieve("id")

      call_control_application.webhook_event_url = 'example.com'
      call_control_application.connection_name = 'telnyx'
      call_control_application.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/call_control_applications/id"
    end
  end
end
