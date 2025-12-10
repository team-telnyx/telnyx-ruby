# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::PortoutsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.portouts.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::PortoutRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PortoutDetails | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.portouts.list

    assert_pattern do
      response => Telnyx::Models::PortoutListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PortoutDetails]) | nil,
        meta: Telnyx::Metadata | nil
      }
    end
  end

  def test_list_rejection_codes
    skip("Prism tests are disabled")

    response = @telnyx.portouts.list_rejection_codes("329d6658-8f93-405d-862f-648776e8afd7")

    assert_pattern do
      response => Telnyx::Models::PortoutListRejectionCodesResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PortoutListRejectionCodesResponse::Data]) | nil
      }
    end
  end

  def test_update_status_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.portouts.update_status(
        :authorized,
        id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        reason: "I do not recognize this transaction"
      )

    assert_pattern do
      response => Telnyx::Models::PortoutUpdateStatusResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PortoutDetails | nil
      }
    end
  end
end
