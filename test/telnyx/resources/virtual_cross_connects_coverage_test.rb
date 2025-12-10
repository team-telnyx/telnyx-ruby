# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::VirtualCrossConnectsCoverageTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.virtual_cross_connects_coverage.list

    assert_pattern do
      response => Telnyx::Models::VirtualCrossConnectsCoverageListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
