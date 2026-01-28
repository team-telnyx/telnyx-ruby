# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::NetworkCoverageTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.network_coverage.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::NetworkCoverageListResponse
    end

    assert_pattern do
      row => {
        available_services: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::AvailableService]) | nil,
        location: Telnyx::Models::NetworkCoverageListResponse::Location | nil,
        record_type: String | nil
      }
    end
  end
end
