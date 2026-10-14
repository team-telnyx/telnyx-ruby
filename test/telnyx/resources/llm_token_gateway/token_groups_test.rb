# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::LlmTokenGateway::TokenGroupsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.llm_token_gateway.token_groups.create(
        allowed_models: ["Kimi-K3", "GLM-5.3-Flash"],
        name: "support-backend",
        idempotency_key: "Idempotency-Key"
      )

    assert_pattern do
      response => Telnyx::LlmTokenGateway::TokenGroupResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::LlmTokenGateway::TokenGroup
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.llm_token_gateway.token_groups.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::LlmTokenGateway::TokenGroupResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::LlmTokenGateway::TokenGroup
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.llm_token_gateway.token_groups.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        idempotency_key: "Idempotency-Key",
        if_match: "If-Match"
      )

    assert_pattern do
      response => Telnyx::LlmTokenGateway::TokenGroupResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::LlmTokenGateway::TokenGroup
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.llm_token_gateway.token_groups.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::LlmTokenGateway::TokenGroup
    end

    assert_pattern do
      row => {
        id: String,
        allowed_models: ^(Telnyx::Internal::Type::ArrayOf[String]),
        blocked: Telnyx::Internal::Type::Boolean,
        budget_duration: Telnyx::LlmTokenGateway::BudgetDuration | nil,
        budget_started_at: Time | nil,
        cache_ttl: Integer | nil,
        created_at: Time,
        fallbacks: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::ArrayOf[String]]) | nil,
        guardrails: Telnyx::LlmTokenGateway::TokenGroup::Guardrails | nil,
        max_budget: Float | nil,
        name: String,
        provider_key_ids: ^(Telnyx::Internal::Type::ArrayOf[String]),
        record_type: Symbol,
        reserved_spend: Float,
        resets_at: Time | nil,
        retries: Telnyx::LlmTokenGateway::TokenGroup::Retries | nil,
        rpm_limit: Integer | nil,
        spend: Float,
        tpm_limit: Integer | nil,
        updated_at: Time,
        version: Integer,
        max_parallel_requests: Integer | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.llm_token_gateway.token_groups.delete(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        idempotency_key: "Idempotency-Key",
        if_match: "If-Match"
      )

    assert_pattern do
      response => nil
    end
  end
end
