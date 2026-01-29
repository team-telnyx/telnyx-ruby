# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::AuditEventsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.audit_events.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::AuditEventListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        alternate_resource_id: String | nil,
        change_made_by: Telnyx::Models::AuditEventListResponse::ChangeMadeBy | nil,
        change_type: String | nil,
        changes: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AuditEventListResponse::Change]) | nil,
        created_at: Time | nil,
        organization_id: String | nil,
        record_type: String | nil,
        resource_id: String | nil,
        user_id: String | nil
      }
    end
  end
end
