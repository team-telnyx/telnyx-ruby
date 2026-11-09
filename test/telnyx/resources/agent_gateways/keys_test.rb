# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AgentGateways::KeysTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @telnyx.agent_gateways.keys.create("ecffdf4b-93ea-4a7b-8295-51dfd2077996")

    assert_pattern do
      response => Telnyx::Models::AgentGateways::KeyCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AgentGateways::KeyCreateResponse::Data
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.agent_gateways.keys.update(
        "5f1c3a0e9b7d4c2a8e6f0b1d3c5a7e9f2b4d6c8a0e1f3a5c7e9b1d3f5a7c9e0b",
        instance_id: "ecffdf4b-93ea-4a7b-8295-51dfd2077996"
      )

    assert_pattern do
      response => Telnyx::AgentGateways::AgentGatewayKeyResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::AgentGatewayKey
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.agent_gateways.keys.list("ecffdf4b-93ea-4a7b-8295-51dfd2077996")

    assert_pattern do
      response => Telnyx::Models::AgentGateways::KeyListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AgentGateways::AgentGatewayKey])
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.agent_gateways.keys.delete(
        "5f1c3a0e9b7d4c2a8e6f0b1d3c5a7e9f2b4d6c8a0e1f3a5c7e9b1d3f5a7c9e0b",
        instance_id: "ecffdf4b-93ea-4a7b-8295-51dfd2077996"
      )

    assert_pattern do
      response => Telnyx::AgentGateways::AgentGatewayKeyResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::AgentGatewayKey
      }
    end
  end
end
