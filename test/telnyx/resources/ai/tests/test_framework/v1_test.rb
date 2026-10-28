# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::AI::Tests::TestFramework::V1Test < Telnyx::Test::ResourceTest
  def test_retrieve_personalities
    skip("Mock server tests are disabled")

    response = @telnyx.ai.tests.test_framework.v1.retrieve_personalities

    assert_pattern do
      response => ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Tests::TestFramework::V1RetrievePersonalitiesResponseItem])
    end
  end
end
