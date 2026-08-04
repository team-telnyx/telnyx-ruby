# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::EmailUnsubscribeGroups::SuppressionsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_unsubscribe_groups.suppressions.create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", to: "to")

    assert_pattern do
      response => Telnyx::EmailBlockResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailBlock
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.email_unsubscribe_groups.suppressions.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::EmailBlock
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        reason: Telnyx::EmailBlock::Reason,
        record_type: Telnyx::EmailBlock::RecordType,
        scope: Telnyx::EmailBlock::Scope,
        source: Telnyx::EmailBlock::Source,
        status: Telnyx::EmailBlock::Status,
        to: String,
        updated_at: Time,
        domain_id: String | nil,
        expires_at: Time | nil,
        from: String | nil,
        group_id: String | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_unsubscribe_groups.suppressions.delete(
        "email",
        id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => nil
    end
  end
end
