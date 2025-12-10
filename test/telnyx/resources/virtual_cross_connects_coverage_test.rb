# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::VirtualCrossConnectsCoverageTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.virtual_cross_connects_coverage.list

    assert_pattern do
      response => Telnyx::Internal::DefaultPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::VirtualCrossConnectsCoverageListResponse
    end

    assert_pattern do
      row => {
        available_bandwidth: ^(Telnyx::Internal::Type::ArrayOf[Float]) | nil,
        cloud_provider: Telnyx::Models::VirtualCrossConnectsCoverageListResponse::CloudProvider | nil,
        cloud_provider_region: String | nil,
        location: Telnyx::Models::VirtualCrossConnectsCoverageListResponse::Location | nil,
        record_type: String | nil
      }
    end
  end
end
