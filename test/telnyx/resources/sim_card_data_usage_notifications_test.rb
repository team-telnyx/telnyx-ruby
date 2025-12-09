# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::SimCardDataUsageNotificationsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.sim_card_data_usage_notifications.create(
        sim_card_id: "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
        threshold: {}
      )

    assert_pattern do
      response => Telnyx::Models::SimCardDataUsageNotificationCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCardDataUsageNotification | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.sim_card_data_usage_notifications.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardDataUsageNotificationRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCardDataUsageNotification | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.sim_card_data_usage_notifications.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardDataUsageNotificationUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCardDataUsageNotification | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.sim_card_data_usage_notifications.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::SimCardDataUsageNotification
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: String | nil,
        record_type: String | nil,
        sim_card_id: String | nil,
        threshold: Telnyx::SimCardDataUsageNotification::Threshold | nil,
        updated_at: String | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.sim_card_data_usage_notifications.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardDataUsageNotificationDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCardDataUsageNotification | nil
      }
    end
  end
end
