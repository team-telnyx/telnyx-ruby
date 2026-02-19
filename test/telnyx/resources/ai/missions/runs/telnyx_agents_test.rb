# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::AI::Missions::Runs::TelnyxAgentsTest < Telnyx::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.missions.runs.telnyx_agents.list(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        mission_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::AI::Missions::Runs::TelnyxAgentListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Missions::Runs::TelnyxAgentListResponse::Data])
      }
    end
  end

  def test_link_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.missions.runs.telnyx_agents.link(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        mission_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        telnyx_agent_id: "telnyx_agent_id"
      )

    assert_pattern do
      response => Telnyx::Models::AI::Missions::Runs::TelnyxAgentLinkResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AI::Missions::Runs::TelnyxAgentLinkResponse::Data
      }
    end
  end

  def test_unlink_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.missions.runs.telnyx_agents.unlink(
        "telnyx_agent_id",
        mission_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        run_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => nil
    end
  end
end
