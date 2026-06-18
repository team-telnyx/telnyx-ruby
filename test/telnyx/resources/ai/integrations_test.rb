# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AI::IntegrationsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.ai.integrations.retrieve("integration_id")

    assert_pattern do
      response => Telnyx::AI::Integration
    end

    assert_pattern do
      response => {
        id: String,
        available_tools: ^(Telnyx::Internal::Type::ArrayOf[String]),
        description: String,
        display_name: String,
        logo_url: String,
        name: String,
        status: Telnyx::AI::Integration::Status
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ai.integrations.list

    assert_pattern do
      response => Telnyx::Models::AI::IntegrationListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Integration])
      }
    end
  end
end
