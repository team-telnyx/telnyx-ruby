# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::NotificationProfilesTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @telnyx.notification_profiles.create

    assert_pattern do
      response => Telnyx::Models::NotificationProfileCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NotificationProfile | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.notification_profiles.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::NotificationProfileRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NotificationProfile | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.notification_profiles.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::NotificationProfileUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NotificationProfile | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.notification_profiles.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::NotificationProfile
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: Time | nil,
        name: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.notification_profiles.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::NotificationProfileDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NotificationProfile | nil
      }
    end
  end
end
