
# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class CredentialConnectionTest < Test::Unit::TestCase
    should "be retrievable" do
      credential_con = CredentialConnection.retrieve "12345"
      assert_requested :get, "#{Telnyx.api_base}/v2/credential_connections/12345"
      assert_kind_of CredentialConnection, credential_con
    end

    should "be creatable" do
      credential_con = CredentialConnection.create
      assert_requested :post, "#{Telnyx.api_base}/v2/credential_connections"
      assert_kind_of CredentialConnection, credential_con
    end

    should "be listable" do
      credential_cons = CredentialConnection.list
      assert_requested :get, "#{Telnyx.api_base}/v2/credential_connections"
      assert_kind_of Array, credential_cons.data
      assert_kind_of CredentialConnection, credential_cons.first
    end

    should "be saveable" do
      credential_con = CredentialConnection.retrieve("12345")
      credential_con.active = true
      credential_con.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/credential_connections/#{credential_con.id}"
      assert_kind_of CredentialConnection, credential_con
    end

    should "be deletable" do
      credential_con = CredentialConnection.retrieve("12345")
      credential_con = credential_con.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/credential_connections/#{credential_con.id}"
      assert_kind_of CredentialConnection, credential_con
    end
  end
end
