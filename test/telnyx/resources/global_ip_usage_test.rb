# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::GlobalIPUsageTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.global_ip_usage.retrieve

    assert_pattern do
      response => Telnyx::Models::GlobalIPUsageRetrieveResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::GlobalIPUsageRetrieveResponse::Data]) | nil
      }
    end
  end
end
