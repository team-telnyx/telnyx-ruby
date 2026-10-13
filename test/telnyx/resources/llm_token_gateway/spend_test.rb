# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::LlmTokenGateway::SpendTest < Telnyx::Test::ResourceTest
  def test_retrieve_events
    skip("Mock server tests are disabled")

    response = @telnyx.llm_token_gateway.spend.retrieve_events

    assert_pattern do
      response => Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Data]),
        meta: Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse::Meta
      }
    end
  end

  def test_retrieve_summary_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.llm_token_gateway.spend.retrieve_summary(
        end_date: "2019-12-27",
        group_by: :token_group,
        start_date: "2019-12-27"
      )

    assert_pattern do
      response => Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse::Data]),
        meta: Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse::Meta
      }
    end
  end
end
