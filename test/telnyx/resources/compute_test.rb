# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::ComputeTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.compute.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::ComputeRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::ComputeRetrieveResponse::Data | nil
      }
    end
  end
end
