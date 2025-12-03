# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::RoomParticipantsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.room_participants.retrieve("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => Telnyx::Models::RoomParticipantRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::RoomParticipant | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.room_participants.list

    assert_pattern do
      response => Telnyx::Models::RoomParticipantListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::RoomParticipant]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
