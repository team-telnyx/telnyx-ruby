# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Assistants::DeletedTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ai.assistants.deleted.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::AI::Assistants::DeletedAssistant
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @telnyx.ai.assistants.deleted.get("assistant_id")

    assert_pattern do
      response => Telnyx::AI::Assistants::DeletedAssistant
    end
  end
end
