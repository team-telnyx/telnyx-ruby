# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::EmailUnsubscribeGroupsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.email_unsubscribe_groups.create(name: "Marketing Newsletter")

    assert_pattern do
      response => Telnyx::UnsubscribeGroupResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::UnsubscribeGroup
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.email_unsubscribe_groups.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::UnsubscribeGroupResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::UnsubscribeGroup
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.email_unsubscribe_groups.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::UnsubscribeGroupResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::UnsubscribeGroup
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.email_unsubscribe_groups.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::UnsubscribeGroup
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        description: String | nil,
        name: String,
        record_type: Telnyx::UnsubscribeGroup::RecordType,
        updated_at: Time
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.email_unsubscribe_groups.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end
end
