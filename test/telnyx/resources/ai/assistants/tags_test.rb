# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Assistants::TagsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.assistants.tags.create("assistant_id", tag: "tag")

    assert_pattern do
      response => Telnyx::Models::AI::Assistants::TagCreateResponse
    end

    assert_pattern do
      response => {
        tags: ^(Telnyx::Internal::Type::ArrayOf[String])
      }
    end
  end

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

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.assistants.tags.delete("tag", assistant_id: "assistant_id")

    assert_pattern do
      response => Telnyx::Models::AI::Assistants::TagDeleteResponse
    end

    assert_pattern do
      response => {
        tags: ^(Telnyx::Internal::Type::ArrayOf[String])
      }
    end
  end
end
