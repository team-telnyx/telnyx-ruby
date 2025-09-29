# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Rooms::SessionsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.rooms.sessions.retrieve("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => Telnyx::Models::Rooms::SessionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::RoomSession | nil
      }
    end
  end

  def test_list_0
    skip("Prism tests are disabled")

    response = @telnyx.rooms.sessions.list_0

    assert_pattern do
      response => Telnyx::Models::Rooms::SessionList0Response
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::RoomSession]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_list_1
    skip("Prism tests are disabled")

    response = @telnyx.rooms.sessions.list_1("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => Telnyx::Models::Rooms::SessionList1Response
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::RoomSession]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_retrieve_participants
    skip("Prism tests are disabled")

    response = @telnyx.rooms.sessions.retrieve_participants("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => Telnyx::Models::Rooms::SessionRetrieveParticipantsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::RoomParticipant]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
