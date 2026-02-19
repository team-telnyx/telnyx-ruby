# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::GlobalIPAssignmentsUsageTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.global_ip_assignments_usage.retrieve

    assert_pattern do
      response => Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::GlobalIPAssignmentsUsageRetrieveResponse::Data]) | nil
      }
    end
  end
end
