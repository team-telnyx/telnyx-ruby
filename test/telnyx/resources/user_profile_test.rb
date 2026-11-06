# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::UserProfileTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.user_profile.list

    assert_pattern do
      response => Telnyx::Models::UserProfileListResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::UserProfileAPI
      }
    end
  end

  def test_patch_all
    skip("Mock server tests are disabled")

    response = @telnyx.user_profile.patch_all

    assert_pattern do
      response => Telnyx::Models::UserProfilePatchAllResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::UserProfileAPI
      }
    end
  end
end
