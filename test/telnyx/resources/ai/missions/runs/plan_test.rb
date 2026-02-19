# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::AI::Missions::Runs::PlanTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.missions.runs.plan.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        mission_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        steps: [{description: "description", sequence: 0, step_id: "step_id"}]
      )

    assert_pattern do
      response => Telnyx::Models::AI::Missions::Runs::PlanCreateResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Missions::Runs::PlanStepData])
      }
    end
  end

  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.missions.runs.plan.retrieve(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        mission_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::AI::Missions::Runs::PlanRetrieveResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Missions::Runs::PlanStepData])
      }
    end
  end

  def test_add_steps_to_plan_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.missions.runs.plan.add_steps_to_plan(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        mission_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        steps: [{description: "description", sequence: 0, step_id: "step_id"}]
      )

    assert_pattern do
      response => Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Missions::Runs::PlanStepData])
      }
    end
  end

  def test_get_step_details_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.missions.runs.plan.get_step_details(
        "step_id",
        mission_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        run_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::AI::Missions::Runs::PlanGetStepDetailsResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Missions::Runs::PlanStepData
      }
    end
  end

  def test_update_step_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.missions.runs.plan.update_step(
        "step_id",
        mission_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        run_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::AI::Missions::Runs::PlanUpdateStepResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Missions::Runs::PlanStepData
      }
    end
  end
end
