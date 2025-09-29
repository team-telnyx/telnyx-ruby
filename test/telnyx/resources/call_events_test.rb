# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::CallEventsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.call_events.list

    assert_pattern do
      response => Telnyx::Models::CallEventListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::CallEventListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
