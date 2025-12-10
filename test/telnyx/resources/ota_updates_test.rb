# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::OtaUpdatesTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.ota_updates.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::OtaUpdateRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::OtaUpdateRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.ota_updates.list

    assert_pattern do
      response => Telnyx::Models::OtaUpdateListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::OtaUpdateListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
