# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::SessionAnalysisTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.session_analysis.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", record_type: "record_type")

    assert_pattern do
      response => Telnyx::Models::SessionAnalysisRetrieveResponse
    end

    assert_pattern do
      response => {
        cost: Telnyx::Models::SessionAnalysisRetrieveResponse::Cost,
        created_at: Time,
        meta: Telnyx::Models::SessionAnalysisRetrieveResponse::Meta,
        root: Telnyx::Models::SessionAnalysisRetrieveResponse::Root,
        session_id: String,
        status: String,
        completed_at: Time | nil
      }
    end
  end
end
