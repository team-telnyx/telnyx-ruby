# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AI::MissionsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ai.missions.create(name: "name")

    assert_pattern do
      response => Telnyx::Models::AI::MissionCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AI::MissionCreateResponse::Data
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.ai.missions.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::AI::MissionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AI::MissionRetrieveResponse::Data
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.ai.missions.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::AI::MissionListResponse
    end

    assert_pattern do
      row => {
        created_at: Time,
        execution_mode: Telnyx::Models::AI::MissionListResponse::ExecutionMode,
        mission_id: String,
        name: String,
        updated_at: Time,
        description: String | nil,
        instructions: String | nil,
        metadata: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        model: String | nil
      }
    end
  end

  def test_clone_mission
    skip("Prism tests are disabled")

    response = @telnyx.ai.missions.clone_mission("mission_id")

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end

  def test_delete_mission
    skip("Prism tests are disabled")

    response = @telnyx.ai.missions.delete_mission("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end

  def test_list_events
    skip("Prism tests are disabled")

    response = @telnyx.ai.missions.list_events

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::AI::MissionListEventsResponse
    end

    assert_pattern do
      row => {
        event_id: String,
        run_id: String,
        summary: String,
        timestamp: Time,
        type: Telnyx::Models::AI::MissionListEventsResponse::Type,
        agent_id: String | nil,
        idempotency_key: String | nil,
        payload: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        step_id: String | nil
      }
    end
  end

  def test_update_mission
    skip("Prism tests are disabled")

    response = @telnyx.ai.missions.update_mission("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::AI::MissionUpdateMissionResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AI::MissionUpdateMissionResponse::Data
      }
    end
  end
end
