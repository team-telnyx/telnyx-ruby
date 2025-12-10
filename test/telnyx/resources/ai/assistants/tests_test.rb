# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Assistants::TestsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.ai.assistants.tests.create(
        destination: "+15551234567",
        instructions: "Act as a frustrated customer who received a damaged product. Ask for a refund and escalate if not satisfied with the initial response.",
        name: "Customer Support Bot Test",
        rubric: [
          {criteria: "Assistant responds within 30 seconds", name: "Response Time"},
          {criteria: "Provides correct product information", name: "Accuracy"}
        ]
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
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::AI::Assistants::AssistantTest
    end

    assert_pattern do
      row => {
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

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.ai.assistants.tests.delete("test_id")

    assert_pattern do
      response => nil
    end
  end
end
