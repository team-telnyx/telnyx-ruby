# frozen_string_literal: true

require_relative "../../../../../test_helper"

class Telnyx::Test::Resources::AI::Tests::TestFramework::V1::ResultsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.test_framework.v1.results.retrieve(0)

    assert_pattern do
      response => Telnyx::AI::Tests::TestFramework::V1::TestRunResult
    end

    assert_pattern do
      response => {
        id: Integer,
        agent: Integer,
        created_at: Time,
        name: String,
        status: String,
        updated_at: Time,
        agent_inbound: Telnyx::Internal::Type::Boolean | nil,
        agent_name: String | nil,
        completed_runs_count: Telnyx::AI::Tests::TestFramework::V1::TestRunResult::CompletedRunsCount | nil,
        failed_runs_count: Telnyx::AI::Tests::TestFramework::V1::TestRunResult::FailedRunsCount | nil,
        is_cronjob: Telnyx::Internal::Type::Boolean | nil,
        met_expected_outcome_count: Telnyx::AI::Tests::TestFramework::V1::TestRunResult::MetExpectedOutcomeCount | nil,
        run_as_text: Telnyx::Internal::Type::Boolean | nil,
        run_type: String | nil,
        runs: ^(Telnyx::Internal::Type::HashOf[Telnyx::AI::Tests::TestFramework::V1::TestRunResult::Run]) | nil,
        scenarios: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Tests::TestFramework::V1::TestRunResult::Scenario]) | nil,
        success_rate: Telnyx::AI::Tests::TestFramework::V1::TestRunResult::SuccessRate | nil,
        success_runs_count: Telnyx::AI::Tests::TestFramework::V1::TestRunResult::SuccessRunsCount | nil,
        total_expected_outcome_count: Telnyx::AI::Tests::TestFramework::V1::TestRunResult::TotalExpectedOutcomeCount | nil,
        total_runs_count: Telnyx::AI::Tests::TestFramework::V1::TestRunResult::TotalRunsCount | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.test_framework.v1.results.list

    assert_pattern do
      response => Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse
    end

    assert_pattern do
      response => {
        next_: String | nil,
        previous: String | nil,
        results: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Tests::TestFramework::V1::ResultListResponse::Result]),
        count: Integer | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.test_framework.v1.results.delete(0)

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end

  def test_rerun
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.test_framework.v1.results.rerun(0)

    assert_pattern do
      response => Telnyx::AI::Tests::TestFramework::V1::TestRunResult
    end

    assert_pattern do
      response => {
        id: Integer,
        agent: Integer,
        created_at: Time,
        name: String,
        status: String,
        updated_at: Time,
        agent_inbound: Telnyx::Internal::Type::Boolean | nil,
        agent_name: String | nil,
        completed_runs_count: Telnyx::AI::Tests::TestFramework::V1::TestRunResult::CompletedRunsCount | nil,
        failed_runs_count: Telnyx::AI::Tests::TestFramework::V1::TestRunResult::FailedRunsCount | nil,
        is_cronjob: Telnyx::Internal::Type::Boolean | nil,
        met_expected_outcome_count: Telnyx::AI::Tests::TestFramework::V1::TestRunResult::MetExpectedOutcomeCount | nil,
        run_as_text: Telnyx::Internal::Type::Boolean | nil,
        run_type: String | nil,
        runs: ^(Telnyx::Internal::Type::HashOf[Telnyx::AI::Tests::TestFramework::V1::TestRunResult::Run]) | nil,
        scenarios: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Tests::TestFramework::V1::TestRunResult::Scenario]) | nil,
        success_rate: Telnyx::AI::Tests::TestFramework::V1::TestRunResult::SuccessRate | nil,
        success_runs_count: Telnyx::AI::Tests::TestFramework::V1::TestRunResult::SuccessRunsCount | nil,
        total_expected_outcome_count: Telnyx::AI::Tests::TestFramework::V1::TestRunResult::TotalExpectedOutcomeCount | nil,
        total_runs_count: Telnyx::AI::Tests::TestFramework::V1::TestRunResult::TotalRunsCount | nil
      }
    end
  end
end
