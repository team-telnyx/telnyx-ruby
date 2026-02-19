# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::PortingTest < Telnyx::Test::ResourceTest
  def test_list_uk_carriers
    skip("Mock server tests are disabled")

    response = @telnyx.porting.list_uk_carriers

    assert_pattern do
      response => Telnyx::Models::PortingListUkCarriersResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PortingListUkCarriersResponse::Data]) | nil
      }
    end
  end
end
