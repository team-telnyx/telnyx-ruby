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
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::PortoutDetails
    end

    assert_pattern do
      row => {
        id: String | nil,
        already_ported: Telnyx::Internal::Type::Boolean | nil,
        authorized_name: String | nil,
        carrier_name: String | nil,
        city: String | nil,
        created_at: String | nil,
        current_carrier: String | nil,
        end_user_name: String | nil,
        foc_date: String | nil,
        host_messaging: Telnyx::Internal::Type::Boolean | nil,
        inserted_at: String | nil,
        lsr: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        phone_numbers: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        pon: String | nil,
        reason: String | nil,
        record_type: String | nil,
        rejection_code: Integer | nil,
        requested_foc_date: String | nil,
        service_address: String | nil,
        spid: String | nil,
        state: String | nil,
        status: Telnyx::PortoutDetails::Status | nil,
        support_key: String | nil,
        updated_at: String | nil,
        user_id: String | nil,
        vendor: String | nil,
        zip: String | nil
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
