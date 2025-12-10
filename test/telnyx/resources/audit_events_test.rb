# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::AuditEventsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.audit_events.list

    assert_pattern do
      response => Telnyx::Models::AuditEventListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AuditEventListResponse::Data]) | nil,
        meta: Telnyx::Models::AuditEventListResponse::Meta | nil
      }
    end
  end
end
