# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Assistants::TestsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.ai.assistants.tests.create(
        destination: "x",
        instructions: "x",
        name: "x",
        rubric: [{criteria: "criteria", name: "name"}]
      )

    assert_pattern do
      response => Telnyx::AI::Assistants::AssistantTest
    end

    assert_pattern do
      response => {
        created_at: Time,
        name: String,
        rubric: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::AssistantTest::Rubric]),
        telnyx_conversation_channel: Telnyx::AI::Assistants::TelnyxConversationChannel,
        test_id: String,
        description: String | nil,
        destination: String | nil,
        instructions: String | nil,
        max_duration_seconds: Integer | nil,
        test_suite: String | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.ai.assistants.tests.retrieve("test_id")

    assert_pattern do
      response => Telnyx::AI::Assistants::AssistantTest
    end

    assert_pattern do
      response => {
        created_at: Time,
        name: String,
        rubric: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::AssistantTest::Rubric]),
        telnyx_conversation_channel: Telnyx::AI::Assistants::TelnyxConversationChannel,
        test_id: String,
        description: String | nil,
        destination: String | nil,
        instructions: String | nil,
        max_duration_seconds: Integer | nil,
        test_suite: String | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.ai.assistants.tests.update("test_id")

    assert_pattern do
      response => Telnyx::AI::Assistants::AssistantTest
    end

    assert_pattern do
      response => {
        created_at: Time,
        name: String,
        rubric: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::AssistantTest::Rubric]),
        telnyx_conversation_channel: Telnyx::AI::Assistants::TelnyxConversationChannel,
        test_id: String,
        description: String | nil,
        destination: String | nil,
        instructions: String | nil,
        max_duration_seconds: Integer | nil,
        test_suite: String | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.ai.assistants.tests.list

    assert_pattern do
      response => Telnyx::Models::AI::Assistants::TestListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::AssistantTest]),
        meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.ai.assistants.tests.delete("test_id")

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end
end
