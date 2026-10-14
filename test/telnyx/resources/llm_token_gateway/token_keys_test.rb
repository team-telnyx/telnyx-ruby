# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::LlmTokenGateway::TokenKeysTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.llm_token_gateway.token_keys.create(
        name: "support-service",
        token_group_id: "11111111-1111-4111-8111-111111111111",
        idempotency_key: "Idempotency-Key"
      )

    assert_pattern do
      response => Telnyx::LlmTokenGateway::TokenKeyResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::LlmTokenGateway::TokenKey
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.llm_token_gateway.token_keys.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::LlmTokenGateway::TokenKeyResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::LlmTokenGateway::TokenKey
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.llm_token_gateway.token_keys.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        idempotency_key: "Idempotency-Key",
        if_match: "If-Match"
      )

    assert_pattern do
      response => Telnyx::LlmTokenGateway::TokenKeyResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::LlmTokenGateway::TokenKey
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.llm_token_gateway.token_keys.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::LlmTokenGateway::TokenKey
    end

    assert_pattern do
      row => {
        id: String,
        allowed_models: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        blocked: Telnyx::Internal::Type::Boolean,
        budget_duration: Telnyx::LlmTokenGateway::BudgetDuration | nil,
        budget_started_at: Time | nil,
        created_at: Time,
        expires_at: Time | nil,
        max_budget: Float | nil,
        name: String,
        record_type: Symbol,
        required_end_user_id: Telnyx::Internal::Type::Boolean,
        reserved_spend: Float,
        resets_at: Time | nil,
        rpm_limit: Integer | nil,
        spend: Float,
        token_group_id: String,
        token_user_id: String | nil,
        tpm_limit: Integer | nil,
        updated_at: Time,
        version: Integer,
        max_parallel_requests: Integer | nil,
        provisioning: Telnyx::LlmTokenGateway::TokenKey::Provisioning | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.llm_token_gateway.token_keys.delete(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        idempotency_key: "Idempotency-Key",
        if_match: "If-Match"
      )

    assert_pattern do
      response => nil
    end
  end
end
