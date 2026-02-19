# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Integrations::ConnectionsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.ai.integrations.connections.retrieve("user_connection_id")

    assert_pattern do
      response => Telnyx::Models::AI::Integrations::ConnectionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AI::Integrations::ConnectionRetrieveResponse::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ai.integrations.connections.list

    assert_pattern do
      response => Telnyx::Models::AI::Integrations::ConnectionListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Integrations::ConnectionListResponse::Data])
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.ai.integrations.connections.delete("user_connection_id")

    assert_pattern do
      response => nil
    end
  end
end
