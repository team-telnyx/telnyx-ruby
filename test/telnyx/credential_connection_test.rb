# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class CredentialConnectionTest < Test::Unit::TestCase
    should "list credential connections" do
      credential_connections = CredentialConnection.list
      assert_requested :get, "#{Telnyx.api_base}/v2/credential_connections"
      assert_kind_of ListObject, credential_connections
      assert_kind_of TelnyxObject, credential_connections.first
    end

    should "create credential connection" do
      CredentialConnection.create(
        connection_name: "Test connection_name",
        user_name: "Test user_name",
        password: "correct-horse-battery-staple"
      )
      assert_requested :post, "#{Telnyx.api_base}/v2/credential_connections"
    end

    should "retrieve credential connection" do
      credential_connection = CredentialConnection.retrieve("id")
      assert_requested :get, "#{Telnyx.api_base}/v2/credential_connections/id"
      assert_kind_of CredentialConnection, credential_connection
    end

    should "delete credential connection" do
      credential_connection = CredentialConnection.retrieve("id")
      id = credential_connection.id.gsub(/\s+/, "+").freeze
      credential_connection.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/credential_connections/#{id}"
    end

    should "update credential connection" do
      credential_connection = CredentialConnection.retrieve("id")

      credential_connection.active = false
      id = credential_connection.id.gsub(/\s+/, "+").freeze
      credential_connection.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/credential_connections/#{id}"
    end
  end
end
