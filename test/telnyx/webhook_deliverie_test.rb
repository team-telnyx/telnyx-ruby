# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class WebhookDeliverieTest < Test::Unit::TestCase
    setup do
      @webhook_deliveries = WebhookDeliverie.list
      @id = @webhook_deliveries[:data].first[:webhook][:id].freeze
    end

    should "be listable" do
      assert_requested :get, "#{Telnyx.api_base}/v2/webhook_deliveries"
      assert @webhook_deliveries.is_a?(ListObject)
      assert @webhook_deliveries[:data].is_a?(Array)
    end

    should "be retrievable" do
      deliverie = WebhookDeliverie.retrieve(@id)
      assert deliverie.is_a?(WebhookDeliverie)
    end
  end
end
