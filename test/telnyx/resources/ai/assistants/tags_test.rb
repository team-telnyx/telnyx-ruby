# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Assistants::TagsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ai.assistants.tags.list

    assert_pattern do
      response => Telnyx::Models::AI::Assistants::TagListResponse
    end

    assert_pattern do
      response => {
        tags: ^(Telnyx::Internal::Type::ArrayOf[String])
      }
    end
  end

  def test_add_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.assistants.tags.add("assistant_id", tag: "tag")

    assert_pattern do
      response => Telnyx::Models::AI::Assistants::TagAddResponse
    end

    assert_pattern do
      response => {
        tags: ^(Telnyx::Internal::Type::ArrayOf[String])
      }
    end
  end

  def test_remove_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.assistants.tags.remove("tag", assistant_id: "assistant_id")

    assert_pattern do
      response => Telnyx::Models::AI::Assistants::TagRemoveResponse
    end

    assert_pattern do
      response => {
        tags: ^(Telnyx::Internal::Type::ArrayOf[String])
      }
    end
  end
end
