# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::NetworkCoverageTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.network_coverage.list

    assert_pattern do
      response => Telnyx::Models::NetworkCoverageListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::NetworkCoverageListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
