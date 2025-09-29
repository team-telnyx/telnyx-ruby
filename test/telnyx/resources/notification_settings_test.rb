# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::NotificationSettingsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.notification_settings.create

    assert_pattern do
      response => Telnyx::Models::NotificationSettingCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NotificationSetting | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.notification_settings.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::NotificationSettingRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NotificationSetting | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.notification_settings.list

    assert_pattern do
      response => Telnyx::Models::NotificationSettingListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::NotificationSetting]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.notification_settings.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::NotificationSettingDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::NotificationSetting | nil
      }
    end
  end
end
