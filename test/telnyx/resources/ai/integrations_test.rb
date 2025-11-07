# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AI::IntegrationsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.ai.integrations.retrieve("integration_id")

    assert_pattern do
      response => Telnyx::Models::AI::IntegrationRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        available_tools: ^(Telnyx::Internal::Type::ArrayOf[String]),
        description: String,
        display_name: String,
        logo_url: String,
        name: String,
        status: Telnyx::Models::AI::IntegrationRetrieveResponse::Status
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.ai.integrations.list

    assert_pattern do
      response => Telnyx::Models::AI::IntegrationListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::IntegrationListResponse::Data])
      }
    end
  end
end
