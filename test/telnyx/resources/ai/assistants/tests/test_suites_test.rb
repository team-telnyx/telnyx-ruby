# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::AI::Assistants::Tests::TestSuitesTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ai.assistants.tests.test_suites.list

    assert_pattern do
      response => Telnyx::Models::AI::Assistants::Tests::TestSuiteListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[String])
      }
    end
  end
end
