# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class DialogflowConnectionTest < Test::Unit::TestCase
    setup do
      @flow = DialogflowConnection.create(
        connection_id: "Foo",
        service_account:
                     { type: "service_account",
                       project_id: "your-project-id",
                       private_key_id: "your-private-key",
                       private_key: "-----BEGIN PRIVATE KEY-----n-----END PRIVATE",
                       client_email: "example@example.com", "client_id": "your-client-id",
                       auth_uri: "http://example.com", "token_uri": "http://example.com",
                       auth_provider_x509_cert_url: "http://example.com",
                       client_x509_cert_url: "http://example.com" }
      )
      @con_id = @flow.connection_id.gsub(/\s+/, "+").freeze
    end

    should "be creatable" do
      assert_requested :post, "#{Telnyx.api_base}/v2/dialogflow_connections/Foo"
    end

    should "be retrievable" do
      DialogflowConnection.retrieve(@con_id)
      assert_requested :get, "#{Telnyx.api_base}/v2/dialogflow_connections/#{@con_id}"
    end
  end
end
