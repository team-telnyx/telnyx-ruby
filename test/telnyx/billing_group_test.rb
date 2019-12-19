
# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class BillingGroupTest < Test::Unit::TestCase
    should "be retrievable" do
      billing_group = BillingGroup.retrieve "12345"
      assert_requested :get, "#{Telnyx.api_base}/v2/billing_groups/12345"
      assert_kind_of BillingGroup, billing_group
    end

    should "be creatable" do
      billing_group = BillingGroup.create(billing_group_address: "0.0.0.0")
      assert_requested :post, "#{Telnyx.api_base}/v2/billing_groups"
      assert_kind_of BillingGroup, billing_group
    end

    should "be listable" do
      billing_groups = BillingGroup.list
      assert_requested :get, "#{Telnyx.api_base}/v2/billing_groups"
      assert_kind_of Array, billing_groups.data
      assert_kind_of BillingGroup, billing_groups.first
    end

    should "be saveable" do
      billing_group = BillingGroup.retrieve("12345")
      billing_group.billing_group_address = "0.0.0.0"
      billing_group.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/billing_groups/#{billing_group.id}"
      assert_kind_of BillingGroup, billing_group
    end

    should "be deletable" do
      billing_group = BillingGroup.retrieve("12345")
      billing_group = billing_group.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/billing_groups/#{billing_group.id}"
      assert_kind_of BillingGroup, billing_group
    end
  end
end
