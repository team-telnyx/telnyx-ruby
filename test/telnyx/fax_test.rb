# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class FaxTest < Test::Unit::TestCase
    should "fetch index" do
      faxes = Fax.list
      assert_requested :get, "#{Telnyx.api_base}/v2/faxes"
      assert_kind_of ListObject, faxes
      assert_kind_of Fax, faxes.first
    end

    should "send fax" do
      fax = Fax.create connection_id: "foo", media_url: "example.com", to: "+13127367276", from: "+13127367277"
      assert_requested :post, "#{Telnyx.api_base}/v2/faxes"
      assert_kind_of Fax, fax
    end

    should "view fax" do
      fax = Fax.retrieve("3ae112cb-d72c-99c7-f765-fbcbfe4bca51")
      assert_requested :get, "#{Telnyx.api_base}/v2/faxes/3ae112cb-d72c-99c7-f765-fbcbfe4bca51"
      assert_kind_of Fax, fax
    end

    should "delete fax" do
      omit "!!waiting for mock!!"
      fax = Fax.retrieve "3ae112cb-d72c-99c7-f765-fbcbfe4bca51"
      fax.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/faxes/3ae112cb-d72c-99c7-f765-fbcbfe4bca51"
    end
    context "actions" do
      should "cancel" do
        fax = Fax.retrieve "3ae112cb-d72c-99c7-f765-fbcbfe4bca51"
        id = fax.id.freeze
        fax.cancel
        assert_requested :post, "#{Telnyx.api_base}/v2/faxes/#{id}/actions/cancel"
      end
    end
  end
end
