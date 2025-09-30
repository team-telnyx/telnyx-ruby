# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Rooms::Sessions::ActionsTest < Telnyx::Test::ResourceTest
  def test_end_
    skip("Prism tests are disabled")

    response = @telnyx.rooms.sessions.actions.end_("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => Telnyx::Models::Rooms::Sessions::ActionEndResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Rooms::Sessions::ActionEndResponse::Data | nil
      }
    end
  end

  def test_kick
    skip("Prism tests are disabled")

    response = @telnyx.rooms.sessions.actions.kick("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => Telnyx::Models::Rooms::Sessions::ActionKickResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Rooms::Sessions::ActionKickResponse::Data | nil
      }
    end
  end

  def test_mute
    skip("Prism tests are disabled")

    response = @telnyx.rooms.sessions.actions.mute("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => Telnyx::Models::Rooms::Sessions::ActionMuteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Rooms::Sessions::ActionMuteResponse::Data | nil
      }
    end
  end

  def test_unmute
    skip("Prism tests are disabled")

    response = @telnyx.rooms.sessions.actions.unmute("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => Telnyx::Models::Rooms::Sessions::ActionUnmuteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Rooms::Sessions::ActionUnmuteResponse::Data | nil
      }
    end
  end
end
