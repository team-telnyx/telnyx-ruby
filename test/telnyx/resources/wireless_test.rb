# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::WirelessTest < Telnyx::Test::ResourceTest
  def test_retrieve_regions_required_params
    skip("Prism tests are disabled")

    response = @telnyx.wireless.retrieve_regions(product: "public_ips")

    assert_pattern do
      response => Telnyx::Models::WirelessRetrieveRegionsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::WirelessRetrieveRegionsResponse::Data]) | nil
      }
    end
  end
end
