# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class FaxApplicationTest < Test::Unit::TestCase
    should "fetch index" do
      fax_applications = FaxApplication.list
      assert_requested :get, "#{Telnyx.api_base}/v2/fax_applications"
      assert_kind_of ListObject, fax_applications
      assert_kind_of TelnyxObject, fax_applications.first
    end

    should "create" do
      fax_application = FaxApplication.create application_name: "foo", webhook_event_url: "https://foo.bar.com"
      assert_requested :post, "#{Telnyx.api_base}/v2/fax_applications"
      assert_kind_of TelnyxObject, fax_application
    end

    should "retrieve" do
      fax_application = FaxApplication.retrieve "foo"
      assert_requested :get, "#{Telnyx.api_base}/v2/fax_applications/foo"
      assert_kind_of TelnyxObject, fax_application
    end

    should "delete" do
      fax_application = FaxApplication.retrieve "foo"
      id = fax_application.id.gsub(/\s+/, "+").freeze
      fax_application.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/fax_applications/#{id}"
    end
  end
end
