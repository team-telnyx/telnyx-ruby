# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MessagingOptoutsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.messaging_optouts.list

    assert_pattern do
      response => Telnyx::Models::MessagingOptoutListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessagingOptoutListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
