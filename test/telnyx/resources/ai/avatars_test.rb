# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AI::AvatarsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.avatars.create(image_file: StringIO.new("Example data"), name: "Customer portrait")

    assert_pattern do
      response => Telnyx::AI::AvatarResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Avatar
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.ai.avatars.retrieve(:elena)

    assert_pattern do
      response => Telnyx::AI::AvatarResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Avatar
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.avatars.update(:elena, name: "Updated portrait")

    assert_pattern do
      response => Telnyx::AI::AvatarResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Avatar
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ai.avatars.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::AI::Avatar
    end

    assert_pattern do
      row => {
        id: Telnyx::AI::AvatarID,
        avatar_type: Telnyx::AI::AvatarType,
        hosted: true | false,
        image_url: String,
        name: String,
        provider: Symbol,
        content_type: Telnyx::AI::Avatar::ContentType | nil,
        created_at: Time | nil,
        height_px: Integer | nil,
        image_url_expires_at: Time | nil,
        size_bytes: Integer | nil,
        updated_at: Time | nil,
        width_px: Integer | nil
      }
    end
  end
end
