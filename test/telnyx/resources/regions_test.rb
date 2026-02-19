# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::RegionsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.regions.list

    assert_pattern do
      response => Telnyx::Models::RegionListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::RegionListResponse::Data]) | nil
      }
    end
  end
end
