# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::NotificationProfilesTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

    response = @telnyx.notification_profiles.list

    assert_pattern do
      response => Telnyx::Models::NotificationProfileListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::NotificationProfile]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

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
