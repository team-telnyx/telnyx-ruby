# frozen_string_literal: true

require_relative "../../../../../test_helper"

class Telnyx::Test::Resources::AI::Assistants::Tests::TestSuites::RunsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.ai.assistants.tests.test_suites.runs.list("suite_name")

    assert_pattern do
      response => Telnyx::AI::Assistants::Tests::TestSuites::PaginatedTestRunList
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::Tests::TestRunResponse]),
        meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta
      }
    end
  end

  def test_trigger
    skip("Prism tests are disabled")

    response = @telnyx.ai.assistants.tests.test_suites.runs.trigger("suite_name")

    assert_pattern do
      response => ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::Tests::TestRunResponse])
    end
  end
end
