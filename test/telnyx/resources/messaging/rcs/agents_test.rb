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
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::RcsAgent
    end

    assert_pattern do
      row => {
        agent_id: String | nil,
        agent_name: String | nil,
        created_at: Time | nil,
        enabled: Telnyx::Internal::Type::Boolean | nil,
        profile_id: String | nil,
        updated_at: Time | nil,
        user_id: String | nil,
        webhook_failover_url: String | nil,
        webhook_url: String | nil
      }
    end
  end
end
