# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class CredentialConnectionTest < Test::Unit::TestCase
    should "list credential connections" do
      credential_connections = CredentialConnection.list
      assert_requested :get, "#{Telnyx.api_base}/v2/credential_connections"
      assert_kind_of ListObject, credential_connections
      assert_kind_of CredentialConnection, credential_connections.first
    end

    should "create credential connection" do
      CredentialConnection.create
      assert_requested :post, "#{Telnyx.api_base}/v2/credential_connections"
    end

    should "retrieve credential connection" do
      credential_connection = CredentialConnection.retrieve("id")
      assert_requested :get, "#{Telnyx.api_base}/v2/credential_connections/id"
      assert_kind_of CredentialConnection, credential_connection
    end

    should "delete credential connection" do
      credential_connection = CredentialConnection.retrieve("id")

      credential_connection.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/credential_connections/id"
    end

    should "update credential connection" do
      credential_connection = CredentialConnection.retrieve("id")

      credential_connection.active = false
      credential_connection.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/credential_connections/id"
    end
  end
end
