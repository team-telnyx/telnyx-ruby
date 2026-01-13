# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::CallEventsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.call_events.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::CallEventListResponse
    end

    assert_pattern do
      row => {
        call_leg_id: String,
        call_session_id: String,
        event_timestamp: String,
        metadata: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]),
        name: String,
        record_type: Telnyx::Models::CallEventListResponse::RecordType,
        type: Telnyx::Models::CallEventListResponse::Type
      }
    end
  end
end
