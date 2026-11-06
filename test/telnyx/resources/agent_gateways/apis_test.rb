# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AgentGateways::APIsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.agent_gateways.apis.create(
        "32ce035d-3165-4031-b1a7-a7c0c259590a",
        name: "petstore",
        spec_url: "https://petstore3.swagger.io/api/v3/openapi.json"
      )

    assert_pattern do
      response => Telnyx::AgentGateways::AgentGatewayAPIResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::AgentGatewayAPI
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.agent_gateways.apis.update(
        "dbe53cc0-bf7e-4f7a-8d84-752d19890eb3",
        instance_id: "32ce035d-3165-4031-b1a7-a7c0c259590a"
      )

    assert_pattern do
      response => Telnyx::AgentGateways::AgentGatewayAPIResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::AgentGatewayAPI
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.agent_gateways.apis.list("32ce035d-3165-4031-b1a7-a7c0c259590a")

    assert_pattern do
      response => Telnyx::Models::AgentGateways::APIListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AgentGateways::AgentGatewayAPI])
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.agent_gateways.apis.delete(
        "dbe53cc0-bf7e-4f7a-8d84-752d19890eb3",
        instance_id: "32ce035d-3165-4031-b1a7-a7c0c259590a"
      )

    assert_pattern do
      response => Telnyx::AgentGateways::AgentGatewayAPIResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::AgentGatewayAPI
      }
    end
  end
end
