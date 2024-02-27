# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class BillingGroupTest < Test::Unit::TestCase
    setup do
      @id = "1c816dc7-af75-6149-ae06-cc63a4f275b1"
    end

    should "list billing groups" do
      billing_groups = BillingGroup.list
      assert_requested :get, "#{Telnyx.api_base}/v2/billing_groups"
      assert_kind_of ListObject, billing_groups
      assert_kind_of BillingGroup, billing_groups.first
    end

    should "create billing group" do
      BillingGroup.create
      assert_requested :post, "#{Telnyx.api_base}/v2/billing_groups"
    end

    should "retrieve billing group" do
      billing_group = BillingGroup.retrieve(@id)
      assert_requested :get, "#{Telnyx.api_base}/v2/billing_groups/#{@id}"
      assert_kind_of BillingGroup, billing_group
    end

    should "delete billing group" do
      billing_group = BillingGroup.retrieve(@id)
      id = billing_group.id.freeze
      billing_group.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/billing_groups/#{id}"
    end

    should "update billing group" do
      billing_group = BillingGroup.retrieve(@id)
      id = billing_group.id.freeze
      billing_group.active = false
      billing_group.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/billing_groups/#{id}"
    end
  end
end
