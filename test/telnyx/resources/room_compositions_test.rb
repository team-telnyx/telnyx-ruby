# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::RoomCompositionsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.room_compositions.create

    assert_pattern do
      response => Telnyx::Models::RoomCompositionCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::RoomComposition | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.room_compositions.retrieve("5219b3af-87c6-4c08-9b58-5a533d893e21")

    assert_pattern do
      response => Telnyx::Models::RoomCompositionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::RoomComposition | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.room_compositions.list

    assert_pattern do
      response => Telnyx::Models::RoomCompositionListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::RoomComposition]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.room_compositions.delete("5219b3af-87c6-4c08-9b58-5a533d893e21")

    assert_pattern do
      response => nil
    end
  end
end
