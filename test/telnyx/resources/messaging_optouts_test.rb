# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MessagingOptoutsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.messaging_optouts.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::MessagingOptoutListResponse
    end

    assert_pattern do
      row => {
        created_at: Time | nil,
        from: String | nil,
        keyword: String | nil,
        messaging_profile_id: String | nil,
        to: String | nil
      }
    end
  end
end
