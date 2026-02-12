# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Missions::RunsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.ai.missions.runs.create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::AI::Missions::RunCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Missions::MissionRunData
      }
    end
  end

  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.ai.missions.runs.retrieve(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        mission_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::AI::Missions::RunRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Missions::MissionRunData
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.ai.missions.runs.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        mission_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::AI::Missions::RunUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Missions::MissionRunData
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.ai.missions.runs.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::AI::Missions::MissionRunData
    end

    assert_pattern do
      row => {
        mission_id: String,
        run_id: String,
        started_at: Time,
        status: Telnyx::AI::Missions::MissionRunData::Status,
        updated_at: Time,
        error: String | nil,
        finished_at: Time | nil,
        input: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        metadata: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        result_payload: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        result_summary: String | nil
      }
    end
  end

  def test_cancel_run_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.ai.missions.runs.cancel_run(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        mission_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::AI::Missions::RunCancelRunResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Missions::MissionRunData
      }
    end
  end

  def test_list_runs
    skip("Prism tests are disabled")

    response = @telnyx.ai.missions.runs.list_runs

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::AI::Missions::MissionRunData
    end

    assert_pattern do
      row => {
        mission_id: String,
        run_id: String,
        started_at: Time,
        status: Telnyx::AI::Missions::MissionRunData::Status,
        updated_at: Time,
        error: String | nil,
        finished_at: Time | nil,
        input: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        metadata: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        result_payload: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        result_summary: String | nil
      }
    end
  end

  def test_pause_run_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.ai.missions.runs.pause_run(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        mission_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::AI::Missions::RunPauseRunResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Missions::MissionRunData
      }
    end
  end

  def test_resume_run_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.ai.missions.runs.resume_run(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        mission_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::AI::Missions::RunResumeRunResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Missions::MissionRunData
      }
    end
  end
end
