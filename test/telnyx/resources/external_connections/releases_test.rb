# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::ExternalConnections::ReleasesTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

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
    skip("Mock server tests are disabled")

    response = @telnyx.external_connections.releases.list("id")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::ExternalConnections::ReleaseListResponse
    end

    assert_pattern do
      row => {
        created_at: String | nil,
        error_message: String | nil,
        status: Telnyx::Models::ExternalConnections::ReleaseListResponse::Status | nil,
        telephone_numbers: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ExternalConnections::ReleaseListResponse::TelephoneNumber]) | nil,
        tenant_id: String | nil,
        ticket_id: String | nil
      }
    end
  end
end
