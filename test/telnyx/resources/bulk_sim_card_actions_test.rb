# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::BulkSimCardActionsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

    response = @telnyx.bulk_sim_card_actions.list

    assert_pattern do
      response => Telnyx::Models::BulkSimCardActionListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::BulkSimCardActionListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
