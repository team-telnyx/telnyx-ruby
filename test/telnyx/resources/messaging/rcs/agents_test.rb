# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Messaging::Rcs::AgentsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.messaging.rcs.agents.retrieve("id")

    assert_pattern do
      response => Telnyx::RcsAgentResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::RcsAgent | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.messaging.rcs.agents.update("id")

    assert_pattern do
      response => Telnyx::RcsAgentResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::RcsAgent | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.messaging.rcs.agents.list

    assert_pattern do
      response => Telnyx::Models::Messaging::Rcs::AgentListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::RcsAgent]) | nil,
        meta: Telnyx::Models::Messaging::Rcs::AgentListResponse::Meta | nil
      }
    end
  end
end
