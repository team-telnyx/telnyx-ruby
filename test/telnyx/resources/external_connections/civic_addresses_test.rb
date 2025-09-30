# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::ExternalConnections::CivicAddressesTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.external_connections.civic_addresses.retrieve("318fb664-d341-44d2-8405-e6bfb9ced6d9", id: "id")

    assert_pattern do
      response => Telnyx::Models::ExternalConnections::CivicAddressRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::ExternalConnections::CivicAddressRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.external_connections.civic_addresses.list("id")

    assert_pattern do
      response => Telnyx::Models::ExternalConnections::CivicAddressListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ExternalConnections::CivicAddressListResponse::Data]) | nil
      }
    end
  end
end
