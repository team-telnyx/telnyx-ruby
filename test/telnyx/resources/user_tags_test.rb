# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::UserTagsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.user_tags.list

    assert_pattern do
      response => Telnyx::Models::UserTagListResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::UserTagListResponse::Data | nil
      }
    end
  end
end
