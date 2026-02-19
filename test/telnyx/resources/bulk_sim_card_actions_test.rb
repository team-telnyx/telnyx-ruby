# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::BulkSimCardActionsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.bulk_sim_card_actions.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::BulkSimCardActionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::BulkSimCardActionRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.bulk_sim_card_actions.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::BulkSimCardActionListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        action_type: Telnyx::Models::BulkSimCardActionListResponse::ActionType | nil,
        created_at: String | nil,
        record_type: String | nil,
        settings: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        sim_card_actions_summary: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::BulkSimCardActionListResponse::SimCardActionsSummary]) | nil,
        updated_at: String | nil
      }
    end
  end
end
