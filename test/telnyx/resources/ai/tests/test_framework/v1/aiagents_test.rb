# frozen_string_literal: true

require_relative "../../../../../test_helper"

class Telnyx::Test::Resources::AI::Tests::TestFramework::V1::AiagentsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.tests.test_framework.v1.aiagents.create(
        agent_name: "Support Bot Under Test",
        assistant_id: "e1a2b3c4-d5e6-f7a8-b9c0-d1e2f3a4b5c6"
      )

    assert_pattern do
      response => Telnyx::AI::Tests::TestFramework::V1::TestAgent
    end

    assert_pattern do
      response => {
        id: Integer,
        agent_name: String,
        assistant_id: String,
        created_at: Time,
        updated_at: Time,
        auto_update_dropoff_nodes: Telnyx::Internal::Type::Boolean | nil,
        auto_update_topic_nodes: Telnyx::Internal::Type::Boolean | nil,
        chat_assistant_id: String | nil,
        contact_number: String | nil,
        description: String | nil,
        enabled_personalities: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        hallucination_metric_kb_files: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        inbound: Telnyx::Internal::Type::Boolean | nil,
        knowledge_base_files: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]) | nil,
        language: String | nil,
        llm_max_tokens: Integer | nil,
        llm_model: String | nil,
        llm_system_prompt: String | nil,
        llm_temperature: Float | nil,
        outbound_auto_call: Telnyx::Internal::Type::Boolean | nil,
        outbound_numbers: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]) | nil,
        sip_auth: ^(Telnyx::Internal::Type::HashOf[String]) | nil,
        sip_endpoint: String | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.test_framework.v1.aiagents.retrieve(0)

    assert_pattern do
      response => Telnyx::AI::Tests::TestFramework::V1::TestAgent
    end

    assert_pattern do
      response => {
        id: Integer,
        agent_name: String,
        assistant_id: String,
        created_at: Time,
        updated_at: Time,
        auto_update_dropoff_nodes: Telnyx::Internal::Type::Boolean | nil,
        auto_update_topic_nodes: Telnyx::Internal::Type::Boolean | nil,
        chat_assistant_id: String | nil,
        contact_number: String | nil,
        description: String | nil,
        enabled_personalities: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        hallucination_metric_kb_files: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        inbound: Telnyx::Internal::Type::Boolean | nil,
        knowledge_base_files: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]) | nil,
        language: String | nil,
        llm_max_tokens: Integer | nil,
        llm_model: String | nil,
        llm_system_prompt: String | nil,
        llm_temperature: Float | nil,
        outbound_auto_call: Telnyx::Internal::Type::Boolean | nil,
        outbound_numbers: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]) | nil,
        sip_auth: ^(Telnyx::Internal::Type::HashOf[String]) | nil,
        sip_endpoint: String | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.test_framework.v1.aiagents.update(0)

    assert_pattern do
      response => Telnyx::AI::Tests::TestFramework::V1::TestAgent
    end

    assert_pattern do
      response => {
        id: Integer,
        agent_name: String,
        assistant_id: String,
        created_at: Time,
        updated_at: Time,
        auto_update_dropoff_nodes: Telnyx::Internal::Type::Boolean | nil,
        auto_update_topic_nodes: Telnyx::Internal::Type::Boolean | nil,
        chat_assistant_id: String | nil,
        contact_number: String | nil,
        description: String | nil,
        enabled_personalities: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        hallucination_metric_kb_files: ^(Telnyx::Internal::Type::ArrayOf[Integer]) | nil,
        inbound: Telnyx::Internal::Type::Boolean | nil,
        knowledge_base_files: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]) | nil,
        language: String | nil,
        llm_max_tokens: Integer | nil,
        llm_model: String | nil,
        llm_system_prompt: String | nil,
        llm_temperature: Float | nil,
        outbound_auto_call: Telnyx::Internal::Type::Boolean | nil,
        outbound_numbers: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]) | nil,
        sip_auth: ^(Telnyx::Internal::Type::HashOf[String]) | nil,
        sip_endpoint: String | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.test_framework.v1.aiagents.list

    assert_pattern do
      response => Telnyx::Models::AI::Tests::TestFramework::V1::AiagentListResponse
    end

    assert_pattern do
      response => {
        count: Integer,
        next_: String | nil,
        previous: String | nil,
        results: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Tests::TestFramework::V1::TestAgent])
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.test_framework.v1.aiagents.delete(0)

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end
end
