# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::GlobalIPAssignmentHealthTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.global_ip_assignment_health.retrieve

    assert_pattern do
      response => Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::GlobalIPAssignmentHealthRetrieveResponse::Data]) | nil
      }
    end
  end
end
