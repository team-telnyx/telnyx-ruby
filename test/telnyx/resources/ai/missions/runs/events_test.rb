# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::AI::Missions::Runs::EventsTest < Telnyx::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.missions.runs.events.list(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        mission_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::AI::Missions::Runs::EventListResponse
    end

    assert_pattern do
      row => {
        event_id: String,
        run_id: String,
        summary: String,
        timestamp: Time,
        type: Telnyx::Models::AI::Missions::Runs::EventListResponse::Type,
        agent_id: String | nil,
        idempotency_key: String | nil,
        payload: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        step_id: String | nil
      }
    end
  end

  def test_get_event_details_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.missions.runs.events.get_event_details(
        "event_id",
        mission_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        run_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::AI::Missions::Runs::EventGetEventDetailsResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AI::Missions::Runs::EventGetEventDetailsResponse::Data
      }
    end
  end

  def test_log_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.missions.runs.events.log(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        mission_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        summary: "summary",
        type: :status_change
      )

    assert_pattern do
      response => Telnyx::Models::AI::Missions::Runs::EventLogResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AI::Missions::Runs::EventLogResponse::Data
      }
    end
  end
end
