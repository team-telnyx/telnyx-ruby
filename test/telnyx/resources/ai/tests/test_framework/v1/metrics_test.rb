# frozen_string_literal: true

require_relative "../../../../../test_helper"

class Telnyx::Test::Resources::AI::Tests::TestFramework::V1::MetricsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.test_framework.v1.metrics.create(name: "Escalates on refund denial")

    assert_pattern do
      response => Telnyx::AI::Tests::TestFramework::V1::AITestMetric
    end

    assert_pattern do
      response => {
        id: Integer,
        eval_type: String,
        name: String,
        type: String,
        add_to_new_agents: Telnyx::Internal::Type::Boolean | nil,
        agent: Integer | nil,
        agent_names: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        agents: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        alert_filters: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        alert_type: String | nil,
        audio_enabled: Telnyx::Internal::Type::Boolean | nil,
        configuration: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        description: String | nil,
        display_order: Integer | nil,
        enum_values: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        evaluation_trigger: String | nil,
        evaluation_trigger_custom_code: String | nil,
        evaluation_trigger_prompt: String | nil,
        ewma_alpha: Float | nil,
        function_name: String | nil,
        kb_file_ids: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        knowledge_base_files: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        metric_cost: Float | nil,
        observability_enabled: Telnyx::Internal::Type::Boolean | nil,
        overall_score: Telnyx::AI::Tests::TestFramework::V1::AITestMetric::OverallScore | nil,
        priority_assignment_prompt: String | nil,
        project: Integer | nil,
        prompt: String | nil,
        sample_rate: Float | nil,
        sampling_enabled: Telnyx::Internal::Type::Boolean | nil,
        significant_change_alert_direction: String | nil,
        significant_change_alert_status: String | nil,
        simulation_enabled: Telnyx::Internal::Type::Boolean | nil,
        slug: String | nil,
        std_multiplier: Float | nil,
        total_score: Telnyx::AI::Tests::TestFramework::V1::AITestMetric::TotalScore | nil,
        trigger_type: String | nil,
        user_defined: Telnyx::Internal::Type::Boolean | nil,
        uses_llm_judge: Telnyx::Internal::Type::Boolean | nil,
        window_size: Integer | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.test_framework.v1.metrics.retrieve(0)

    assert_pattern do
      response => Telnyx::AI::Tests::TestFramework::V1::AITestMetric
    end

    assert_pattern do
      response => {
        id: Integer,
        eval_type: String,
        name: String,
        type: String,
        add_to_new_agents: Telnyx::Internal::Type::Boolean | nil,
        agent: Integer | nil,
        agent_names: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        agents: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        alert_filters: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        alert_type: String | nil,
        audio_enabled: Telnyx::Internal::Type::Boolean | nil,
        configuration: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        description: String | nil,
        display_order: Integer | nil,
        enum_values: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        evaluation_trigger: String | nil,
        evaluation_trigger_custom_code: String | nil,
        evaluation_trigger_prompt: String | nil,
        ewma_alpha: Float | nil,
        function_name: String | nil,
        kb_file_ids: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        knowledge_base_files: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        metric_cost: Float | nil,
        observability_enabled: Telnyx::Internal::Type::Boolean | nil,
        overall_score: Telnyx::AI::Tests::TestFramework::V1::AITestMetric::OverallScore | nil,
        priority_assignment_prompt: String | nil,
        project: Integer | nil,
        prompt: String | nil,
        sample_rate: Float | nil,
        sampling_enabled: Telnyx::Internal::Type::Boolean | nil,
        significant_change_alert_direction: String | nil,
        significant_change_alert_status: String | nil,
        simulation_enabled: Telnyx::Internal::Type::Boolean | nil,
        slug: String | nil,
        std_multiplier: Float | nil,
        total_score: Telnyx::AI::Tests::TestFramework::V1::AITestMetric::TotalScore | nil,
        trigger_type: String | nil,
        user_defined: Telnyx::Internal::Type::Boolean | nil,
        uses_llm_judge: Telnyx::Internal::Type::Boolean | nil,
        window_size: Integer | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.test_framework.v1.metrics.update(0)

    assert_pattern do
      response => Telnyx::AI::Tests::TestFramework::V1::AITestMetric
    end

    assert_pattern do
      response => {
        id: Integer,
        eval_type: String,
        name: String,
        type: String,
        add_to_new_agents: Telnyx::Internal::Type::Boolean | nil,
        agent: Integer | nil,
        agent_names: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        agents: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        alert_filters: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        alert_type: String | nil,
        audio_enabled: Telnyx::Internal::Type::Boolean | nil,
        configuration: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        description: String | nil,
        display_order: Integer | nil,
        enum_values: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        evaluation_trigger: String | nil,
        evaluation_trigger_custom_code: String | nil,
        evaluation_trigger_prompt: String | nil,
        ewma_alpha: Float | nil,
        function_name: String | nil,
        kb_file_ids: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        knowledge_base_files: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        metric_cost: Float | nil,
        observability_enabled: Telnyx::Internal::Type::Boolean | nil,
        overall_score: Telnyx::AI::Tests::TestFramework::V1::AITestMetric::OverallScore | nil,
        priority_assignment_prompt: String | nil,
        project: Integer | nil,
        prompt: String | nil,
        sample_rate: Float | nil,
        sampling_enabled: Telnyx::Internal::Type::Boolean | nil,
        significant_change_alert_direction: String | nil,
        significant_change_alert_status: String | nil,
        simulation_enabled: Telnyx::Internal::Type::Boolean | nil,
        slug: String | nil,
        std_multiplier: Float | nil,
        total_score: Telnyx::AI::Tests::TestFramework::V1::AITestMetric::TotalScore | nil,
        trigger_type: String | nil,
        user_defined: Telnyx::Internal::Type::Boolean | nil,
        uses_llm_judge: Telnyx::Internal::Type::Boolean | nil,
        window_size: Integer | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.test_framework.v1.metrics.list

    assert_pattern do
      response => ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Tests::TestFramework::V1::AITestMetric])
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.test_framework.v1.metrics.delete(0)

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end

  def test_bulk_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.tests.test_framework.v1.metrics.bulk_create(body: [{name: "Greets within 5 seconds"}])

    assert_pattern do
      response => ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Tests::TestFramework::V1::AITestMetric])
    end
  end

  def test_generate_metrics_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.test_framework.v1.metrics.generate_metrics(agent_id: 1259, num_metrics: 5)

    assert_pattern do
      response => Telnyx::AI::Tests::TestFramework::V1::ScenarioGenerationResponse
    end

    assert_pattern do
      response => {
        progress_id: String
      }
    end
  end

  def test_retrieve_generate_metrics_progress_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.tests.test_framework.v1.metrics.retrieve_generate_metrics_progress(progress_id: "progress_id")

    assert_pattern do
      response => Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse
    end

    assert_pattern do
      response => {
        agent_id: Integer,
        current_step: String,
        error: String | nil,
        metrics: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse::Metric]),
        status: Telnyx::Models::AI::Tests::TestFramework::V1::MetricRetrieveGenerateMetricsProgressResponse::Status
      }
    end
  end
end
