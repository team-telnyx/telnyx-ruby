# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class MobilePushCredentialTest < Test::Unit::TestCase
    setup do
      @id = "ebb9daec-eb8a-8caa-0105-2b6f56f5a11c"
    end
    should "be creatable" do
      MobilePushCredential.create(type: "ios", alias: "Lucy", private_key: "PRIVATE KEY", server_key: "key", certificate: "certificate")
      assert_requested :post, "#{Telnyx.api_base}/v2/mobile_push_credentials"
    end

    should "be listable" do
      mobile_push_credentials = MobilePushCredential.list
      assert_requested :get, "#{Telnyx.api_base}/v2/mobile_push_credentials"
      assert mobile_push_credentials.data.is_a?(Array)
    end

    should "be retrievable" do
      MobilePushCredential.retrieve(@id)
      assert_requested :get, "#{Telnyx.api_base}/v2/mobile_push_credentials/#{@id}"
    end

    should "be deletable" do
      mobile_push_credential = MobilePushCredential.retrieve(@id)
      id = mobile_push_credential.id.freeze
      mobile_push_credential.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/mobile_push_credentials/#{id}"
    end
  end
end
