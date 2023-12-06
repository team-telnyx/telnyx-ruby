# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class ManagedAccountTest < Test::Unit::TestCase
    setup do
      @id = "d5cced2b-b3c2-7c43-4d8e-0d834c87f7e8"
    end
    should "list managed_accounts" do
      managed_account = ManagedAccount.list
      assert_requested :get, "#{Telnyx.api_base}/v2/managed_accounts"
      assert_kind_of ListObject, managed_account
      assert_kind_of TelnyxObject, managed_account.first
    end

    should "create managed_account" do
      ManagedAccount.create(
        business_name: "Telnyx"
      )
      assert_requested :post, "#{Telnyx.api_base}/v2/managed_accounts"
    end

    should "retrieve managed_account" do
      managed_account = ManagedAccount.retrieve(@id)
      assert_requested :get, "#{Telnyx.api_base}/v2/managed_accounts/#{@id}"
      assert_kind_of TelnyxObject, managed_account
    end

    should "list of allocatable_global_outbound_channels" do
      ManagedAccount.allocatable_global_outbound_channels
      assert_requested :get, "#{Telnyx.api_base}/v2/managed_accounts/allocatable_global_outbound_channels"
    end

    should "update_global_channel_limit" do
      managed_account = ManagedAccount.retrieve(@id)
      id = managed_account.id.gsub(/\s+/, "+").freeze
      managed_account.update_global_channel_limit(api_user: "test")
      assert_requested :patch, "#{Telnyx.api_base}/v2/managed_accounts/#{id}/update_global_channel_limit"
    end
  end
end
