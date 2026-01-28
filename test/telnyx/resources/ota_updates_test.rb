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
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::OtaUpdateListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: String | nil,
        record_type: String | nil,
        sim_card_id: String | nil,
        status: Telnyx::Models::OtaUpdateListResponse::Status | nil,
        type: Telnyx::Models::OtaUpdateListResponse::Type | nil,
        updated_at: String | nil
      }
    end
  end
end
