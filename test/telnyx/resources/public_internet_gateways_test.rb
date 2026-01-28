# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::PublicInternetGatewaysTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.public_internet_gateways.create

    assert_pattern do
      response => Telnyx::Models::PublicInternetGatewayCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::PublicInternetGatewayCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.public_internet_gateways.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::PublicInternetGatewayRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::PublicInternetGatewayRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.public_internet_gateways.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::PublicInternetGatewayListResponse
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.public_internet_gateways.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::PublicInternetGatewayDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::PublicInternetGatewayDeleteResponse::Data | nil
      }
    end
  end
end
