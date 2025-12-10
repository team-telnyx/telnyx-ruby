# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::AI::Assistants::Tests::RunsTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ai.assistants.tests.runs.retrieve("run_id", test_id: "test_id")

    assert_pattern do
      response => Telnyx::AI::Assistants::Tests::TestRunResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        run_id: String,
        status: Telnyx::AI::Assistants::Tests::TestStatus,
        test_id: String,
        triggered_by: String,
        completed_at: Time | nil,
        conversation_id: String | nil,
        conversation_insights_id: String | nil,
        detail_status: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::Tests::TestRunResponse::DetailStatus]) | nil,
        logs: String | nil,
        test_suite_run_id: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.ai.assistants.tests.runs.list("test_id")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::AI::Assistants::Tests::TestRunResponse
    end

    assert_pattern do
      row => {
        created_at: Time,
        run_id: String,
        status: Telnyx::AI::Assistants::Tests::TestStatus,
        test_id: String,
        triggered_by: String,
        completed_at: Time | nil,
        conversation_id: String | nil,
        conversation_insights_id: String | nil,
        detail_status: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::Tests::TestRunResponse::DetailStatus]) | nil,
        logs: String | nil,
        test_suite_run_id: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_trigger
    skip("Prism tests are disabled")

    response = @telnyx.ai.assistants.tests.runs.trigger("test_id")

    assert_pattern do
      response => Telnyx::AI::Assistants::Tests::TestRunResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        run_id: String,
        status: Telnyx::AI::Assistants::Tests::TestStatus,
        test_id: String,
        triggered_by: String,
        completed_at: Time | nil,
        conversation_id: String | nil,
        conversation_insights_id: String | nil,
        detail_status: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::Tests::TestRunResponse::DetailStatus]) | nil,
        logs: String | nil,
        test_suite_run_id: String | nil,
        updated_at: Time | nil
      }
    end
  end
end
