# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::RoomsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.rooms.create

    assert_pattern do
      response => Telnyx::Models::RoomCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Room | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.rooms.retrieve("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => Telnyx::Models::RoomRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Room | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.rooms.update("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => Telnyx::Models::RoomUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Room | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.rooms.list

    assert_pattern do
      response => Telnyx::Models::RoomListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Room]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.rooms.delete("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => nil
    end
  end
end
