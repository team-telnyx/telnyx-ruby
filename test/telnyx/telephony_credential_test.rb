# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class TelephonyCredentialTest < Test::Unit::TestCase
    should "list telephony credentials" do
      telephony_credentials = TelephonyCredential.list
      assert_requested :get, "#{Telnyx.api_base}/v2/telephony_credentials"
      assert_kind_of ListObject, telephony_credentials
      assert_kind_of TelnyxObject, telephony_credentials.first
    end

    should "create telephony credential" do
      TelephonyCredential.create(
        name: "Test credential",
        connection_id: "1234567890"
      )
      assert_requested :post, "#{Telnyx.api_base}/v2/telephony_credentials"
    end

    should "retrieve telephony credential" do
      telephony_credential = TelephonyCredential.retrieve("id")
      assert_requested :get, "#{Telnyx.api_base}/v2/telephony_credentials/id"
      assert_kind_of TelnyxObject, telephony_credential
    end

    should "delete telephony credential" do
      telephony_credential = TelephonyCredential.retrieve("id")
      id = telephony_credential.id.gsub(/\s+/, "+").freeze
      telephony_credential.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/telephony_credentials/#{id}"
    end

    should "update telephony credential" do
      telephony_credential = TelephonyCredential.retrieve("id")
      id = telephony_credential.id.gsub(/\s+/, "+").freeze
      telephony_credential.expires_at = "2021-07-27T17:58:54Z"
      telephony_credential.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/telephony_credentials/#{id}"
    end
  end
end
