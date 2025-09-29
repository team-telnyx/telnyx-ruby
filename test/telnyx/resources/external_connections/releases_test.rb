# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::ExternalConnections::ReleasesTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.external_connections.releases.retrieve("7b6a6449-b055-45a6-81f6-f6f0dffa4cc6", id: "id")

    assert_pattern do
      response => Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.external_connections.releases.list("id")

    assert_pattern do
      response => Telnyx::Models::ExternalConnections::ReleaseListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ExternalConnections::ReleaseListResponse::Data]) | nil,
        meta: Telnyx::ExternalVoiceIntegrationsPaginationMeta | nil
      }
    end
  end
end
