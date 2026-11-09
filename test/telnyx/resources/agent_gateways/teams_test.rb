# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AgentGateways::TeamsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.agent_gateways.teams.create("ecffdf4b-93ea-4a7b-8295-51dfd2077996", name: "support")

    assert_pattern do
      response => Telnyx::AgentGateways::AgentGatewayTeamResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::AgentGatewayTeam
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.agent_gateways.teams.update(
        "0b6c5d4e-3f2a-4b1c-9d8e-7f6a5b4c3d2e",
        instance_id: "ecffdf4b-93ea-4a7b-8295-51dfd2077996"
      )

    assert_pattern do
      response => Telnyx::AgentGateways::AgentGatewayTeamResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::AgentGatewayTeam
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.agent_gateways.teams.list("ecffdf4b-93ea-4a7b-8295-51dfd2077996")

    assert_pattern do
      response => Telnyx::Models::AgentGateways::TeamListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AgentGateways::AgentGatewayTeam])
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.agent_gateways.teams.delete(
        "0b6c5d4e-3f2a-4b1c-9d8e-7f6a5b4c3d2e",
        instance_id: "ecffdf4b-93ea-4a7b-8295-51dfd2077996"
      )

    assert_pattern do
      response => Telnyx::AgentGateways::AgentGatewayTeamResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::AgentGatewayTeam
      }
    end
  end
end
