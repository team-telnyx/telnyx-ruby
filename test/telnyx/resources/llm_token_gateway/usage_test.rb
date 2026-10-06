# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::LlmTokenGateway::UsageTest < Telnyx::Test::ResourceTest
  def test_retrieve_summary_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.llm_token_gateway.usage.retrieve_summary(
        end_date: "2019-12-27",
        start_date: "2019-12-27",
        token_group_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Data,
        meta: Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse::Meta
      }
    end
  end
end
