# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Assistants::ScheduledEventsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.ai.assistants.scheduled_events.create(
        "assistant_id",
        scheduled_at_fixed_datetime: "2025-04-15T13:07:28.764Z",
        telnyx_agent_target: "telnyx_agent_target",
        telnyx_conversation_channel: :phone_call,
        telnyx_end_user_target: "telnyx_end_user_target"
      )

    assert_pattern do
      response => Telnyx::AI::Assistants::ScheduledEventResponse
    end

    assert_pattern do
      case response
      in Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse
      in Telnyx::AI::Assistants::ScheduledSMSEventResponse
      end
    end
  end

  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ai.assistants.scheduled_events.retrieve("event_id", assistant_id: "assistant_id")

    assert_pattern do
      response => Telnyx::AI::Assistants::ScheduledEventResponse
    end

    assert_pattern do
      case response
      in Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse
      in Telnyx::AI::Assistants::ScheduledSMSEventResponse
      end
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.ai.assistants.scheduled_events.list("assistant_id")

    assert_pattern do
      response => Telnyx::Models::AI::Assistants::ScheduledEventListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[union: Telnyx::Models::AI::Assistants::ScheduledEventListResponse::Data]),
        meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ai.assistants.scheduled_events.delete("event_id", assistant_id: "assistant_id")

    assert_pattern do
      response => nil
    end
  end
end
