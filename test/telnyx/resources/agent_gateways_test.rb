# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::AgentGatewaysTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.agent_gateways.create(wireguard_interface_id: "c788eb40-a4c0-4bf5-8f84-976027960f8e")

    assert_pattern do
      response => Telnyx::AgentGatewayResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateway
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.agent_gateways.retrieve("ecffdf4b-93ea-4a7b-8295-51dfd2077996")

    assert_pattern do
      response => Telnyx::AgentGatewayResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateway
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.agent_gateways.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::AgentGateway
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        engine: Symbol,
        engine_version: String,
        gateway_url: String | nil,
        name: String | nil,
        network_id: String | nil,
        status: Telnyx::AgentGateway::Status,
        wireguard_interface_id: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.agent_gateways.delete("ecffdf4b-93ea-4a7b-8295-51dfd2077996")

    assert_pattern do
      response => Telnyx::AgentGatewayResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateway
      }
    end
  end

  def test_retrieve_models
    skip("Mock server tests are disabled")

    response = @telnyx.agent_gateways.retrieve_models("32ce035d-3165-4031-b1a7-a7c0c259590a")

    assert_pattern do
      response => Telnyx::Models::AgentGatewayRetrieveModelsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AgentGatewayRetrieveModelsResponse::Data])
      }
    end
  end

  def test_retrieve_spend_logs
    skip("Mock server tests are disabled")

    response = @telnyx.agent_gateways.retrieve_spend_logs("ecffdf4b-93ea-4a7b-8295-51dfd2077996")

    assert_pattern do
      response => Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse::Data]),
        meta: Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse::Meta
      }
    end
  end
end
