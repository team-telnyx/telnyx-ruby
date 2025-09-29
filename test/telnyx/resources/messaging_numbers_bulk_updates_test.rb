# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MessagingNumbersBulkUpdatesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.messaging_numbers_bulk_updates.create(
        messaging_profile_id: "00000000-0000-0000-0000-000000000000",
        numbers: ["+18880000000", "+18880000001", "+18880000002"]
      )

    assert_pattern do
      response => Telnyx::Models::MessagingNumbersBulkUpdateCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::MessagingNumbersBulkUpdateCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.messaging_numbers_bulk_updates.retrieve("order_id")

    assert_pattern do
      response => Telnyx::Models::MessagingNumbersBulkUpdateRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::MessagingNumbersBulkUpdateRetrieveResponse::Data | nil
      }
    end
  end
end
