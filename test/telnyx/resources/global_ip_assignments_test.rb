# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::GlobalIPAssignmentsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.global_ip_assignments.create

    assert_pattern do
      response => Telnyx::Models::GlobalIPAssignmentCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::GlobalIPAssignment | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.global_ip_assignments.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::GlobalIPAssignmentRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::GlobalIPAssignment | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @telnyx.global_ip_assignments.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58", body: {})

    assert_pattern do
      response => Telnyx::Models::GlobalIPAssignmentUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::GlobalIPAssignment | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.global_ip_assignments.list

    assert_pattern do
      response => Telnyx::Models::GlobalIPAssignmentListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::GlobalIPAssignment]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.global_ip_assignments.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::GlobalIPAssignmentDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::GlobalIPAssignment | nil
      }
    end
  end
end
