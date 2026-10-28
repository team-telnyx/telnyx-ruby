# frozen_string_literal: true

require_relative "../../../../../test_helper"

class Telnyx::Test::Resources::AI::Tests::TestFramework::V1::ScenariosTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.tests.test_framework.v1.scenarios.create(name: "Refund escalation flow", personality: 4643)

    assert_pattern do
      response => Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail
    end

    assert_pattern do
      response => {
        id: Integer,
        agent: Integer | nil,
        name: String,
        dynamic_variable_values: ^(Telnyx::Internal::Type::HashOf[String]) | nil,
        expected_outcome_prompt: String | nil,
        first_message: String | nil,
        folder_path: String | nil,
        inbound_phone_number: Integer | nil,
        inbound_phone_number_data: Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::InboundPhoneNumberData | nil,
        information_fields: ^(Telnyx::Internal::Type::HashOf[String]) | nil,
        instructions: String | nil,
        is_predefined: Telnyx::Internal::Type::Boolean | nil,
        max_duration: Integer | nil,
        metric_names: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        metrics: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        outbound_phone_number_data: Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::OutboundPhoneNumberData | nil,
        personality: Integer | nil,
        personality_name: String | nil,
        phone_number: String | nil,
        project: Integer | nil,
        runs: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        scenario_language: String | nil,
        scenario_type: String | nil,
        simulation_description: String | nil,
        suite_type: String | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        test_profile: Integer | nil,
        test_profile_data: Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::TestProfileData | nil,
        tool_ids: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.test_framework.v1.scenarios.retrieve(0)

    assert_pattern do
      response => Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail
    end

    assert_pattern do
      response => {
        id: Integer,
        agent: Integer | nil,
        name: String,
        dynamic_variable_values: ^(Telnyx::Internal::Type::HashOf[String]) | nil,
        expected_outcome_prompt: String | nil,
        first_message: String | nil,
        folder_path: String | nil,
        inbound_phone_number: Integer | nil,
        inbound_phone_number_data: Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::InboundPhoneNumberData | nil,
        information_fields: ^(Telnyx::Internal::Type::HashOf[String]) | nil,
        instructions: String | nil,
        is_predefined: Telnyx::Internal::Type::Boolean | nil,
        max_duration: Integer | nil,
        metric_names: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        metrics: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        outbound_phone_number_data: Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::OutboundPhoneNumberData | nil,
        personality: Integer | nil,
        personality_name: String | nil,
        phone_number: String | nil,
        project: Integer | nil,
        runs: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        scenario_language: String | nil,
        scenario_type: String | nil,
        simulation_description: String | nil,
        suite_type: String | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        test_profile: Integer | nil,
        test_profile_data: Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::TestProfileData | nil,
        tool_ids: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.test_framework.v1.scenarios.update(0)

    assert_pattern do
      response => Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail
    end

    assert_pattern do
      response => {
        id: Integer,
        agent: Integer | nil,
        name: String,
        dynamic_variable_values: ^(Telnyx::Internal::Type::HashOf[String]) | nil,
        expected_outcome_prompt: String | nil,
        first_message: String | nil,
        folder_path: String | nil,
        inbound_phone_number: Integer | nil,
        inbound_phone_number_data: Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::InboundPhoneNumberData | nil,
        information_fields: ^(Telnyx::Internal::Type::HashOf[String]) | nil,
        instructions: String | nil,
        is_predefined: Telnyx::Internal::Type::Boolean | nil,
        max_duration: Integer | nil,
        metric_names: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        metrics: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        outbound_phone_number_data: Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::OutboundPhoneNumberData | nil,
        personality: Integer | nil,
        personality_name: String | nil,
        phone_number: String | nil,
        project: Integer | nil,
        runs: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        scenario_language: String | nil,
        scenario_type: String | nil,
        simulation_description: String | nil,
        suite_type: String | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        test_profile: Integer | nil,
        test_profile_data: Telnyx::AI::Tests::TestFramework::V1::EvaluatorScenarioDetail::TestProfileData | nil,
        tool_ids: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.test_framework.v1.scenarios.list

    assert_pattern do
      response => Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse
    end

    assert_pattern do
      response => {
        count: Integer,
        next_: String | nil,
        previous: String | nil,
        results: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioListResponse::Result])
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.test_framework.v1.scenarios.delete(0)

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end

  def test_generate_bg_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.test_framework.v1.scenarios.generate_bg(num_scenarios: 5)

    assert_pattern do
      response => Telnyx::AI::Tests::TestFramework::V1::ScenarioGenerationResponse
    end

    assert_pattern do
      response => {
        progress_id: String
      }
    end
  end

  def test_retrieve_export_scenarios_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.tests.test_framework.v1.scenarios.retrieve_export_scenarios(
        export_type: :csv,
        scenario_ids: "scenario_ids"
      )

    assert_pattern do
      response => StringIO
    end
  end

  def test_retrieve_generate_progress_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.tests.test_framework.v1.scenarios.retrieve_generate_progress(progress_id: "progress_id")

    assert_pattern do
      response => Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveGenerateProgressResponse
    end

    assert_pattern do
      response => {
        completed_scenarios: Integer | nil,
        failed_scenarios: Integer | nil,
        scenarios_list: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]) | nil,
        total_scenarios: Integer | nil
      }
    end
  end

  def test_retrieve_scenario_agent_progress_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.tests.test_framework.v1.scenarios.retrieve_scenario_agent_progress(progress_id: "progress_id")

    assert_pattern do
      response => Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse
    end

    assert_pattern do
      response => {
        error: String | nil,
        mode: String | nil,
        progress_id: String | nil,
        result: Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result | nil,
        session_id: Integer | nil,
        status: String | nil
      }
    end
  end

  def test_run_scenarios
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.test_framework.v1.scenarios.run_scenarios

    assert_pattern do
      response => Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRunScenariosResponse
    end

    assert_pattern do
      response => {
        id: Integer,
        status: String
      }
    end
  end

  def test_scenario_agent_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.tests.test_framework.v1.scenarios.scenario_agent(
        scenarios: "all",
        user_message: "Make the callers ask about damaged packaging too."
      )

    assert_pattern do
      response => Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioScenarioAgentResponse
    end

    assert_pattern do
      response => {
        progress_id: String,
        session_id: Integer | nil
      }
    end
  end
end
