# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::NotificationChannelsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.notification_channels.create

    assert_pattern do
      response => Telnyx::Models::NotificationChannelCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NotificationChannel | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.notification_channels.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::NotificationChannelRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NotificationChannel | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.notification_channels.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::NotificationChannelUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NotificationChannel | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.notification_channels.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::NotificationChannel
    end

    assert_pattern do
      row => {
        id: String | nil,
        channel_destination: String | nil,
        channel_type_id: Telnyx::NotificationChannel::ChannelTypeID | nil,
        created_at: Time | nil,
        notification_profile_id: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.notification_channels.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::NotificationChannelDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NotificationChannel | nil
      }
    end
  end
end
