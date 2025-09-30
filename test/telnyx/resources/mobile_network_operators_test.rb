# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MobileNetworkOperatorsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.mobile_network_operators.list

    assert_pattern do
      response => Telnyx::Models::MobileNetworkOperatorListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MobileNetworkOperatorListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
