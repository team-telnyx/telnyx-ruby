# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class SimCardDataUsageNotificationTest < Test::Unit::TestCase
    setup do
      @id = "d25f43b3-aea3-6a5d-7a1b-d83e5c100cce"
    end
    should "retrieve sim card data usage notification" do
      sim_card_data_usage_notification = SimCardDataUsageNotification.retrieve @id
      assert_requested(:get, "#{Telnyx.api_base}/v2/sim_card_data_usage_notifications/#{@id}")
      assert_kind_of SimCardDataUsageNotification, sim_card_data_usage_notification
    end

    should "list sim card data usage notifications" do
      simlist = SimCardDataUsageNotification.list
      assert_requested(:get, "#{Telnyx.api_base}/v2/sim_card_data_usage_notifications")
      assert_kind_of Telnyx::ListObject, simlist
    end

    should "create sim card data usage notifications" do
      SimCardDataUsageNotification.create(sim_card_id: "6a09cdc3-8948-47f0-aa62-74ac943d6c58", threshold: { amount: "2023.0", unit: "MB" })
      assert_requested(:post, "#{Telnyx.api_base}/v2/sim_card_data_usage_notifications")
    end

    should "update sim card data usage notification" do
      sim_card_data_usage_notification = SimCardDataUsageNotification.retrieve @id
      sim_card_data_usage_notification.threshold.unit = "GB"
      id = sim_card_data_usage_notification.id.freeze
      sim_card_data_usage_notification.save
      assert_requested(:patch, "#{Telnyx.api_base}/v2/sim_card_data_usage_notifications/#{id}")
    end

    should "delete sim card data usage notification" do
      sim_card_data_usage_notification = SimCardDataUsageNotification.retrieve @id
      id = sim_card_data_usage_notification.id.freeze
      sim_card_data_usage_notification.delete
      assert_requested(:delete, "#{Telnyx.api_base}/v2/sim_card_data_usage_notifications/#{id}")
    end
  end
end
