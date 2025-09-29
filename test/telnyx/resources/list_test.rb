# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::ListTest < Telnyx::Test::ResourceTest
  def test_retrieve_all
    skip("Prism tests are disabled")

    response = @telnyx.list.retrieve_all

    assert_pattern do
      response => Telnyx::Models::ListRetrieveAllResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ListRetrieveAllResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_retrieve_by_zone
    skip("Prism tests are disabled")

    response = @telnyx.list.retrieve_by_zone("channel_zone_id")

    assert_pattern do
      response => Telnyx::Models::ListRetrieveByZoneResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ListRetrieveByZoneResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
