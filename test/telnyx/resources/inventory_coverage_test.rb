# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::InventoryCoverageTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.inventory_coverage.list

    assert_pattern do
      response => Telnyx::Models::InventoryCoverageListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::InventoryCoverageListResponse::Data]) | nil,
        meta: Telnyx::Models::InventoryCoverageListResponse::Meta | nil
      }
    end
  end
end
