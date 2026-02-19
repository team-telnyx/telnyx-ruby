# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::InvoicesTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.invoices.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::InvoiceRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::InvoiceRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.invoices.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::InvoiceListResponse
    end

    assert_pattern do
      row => {
        file_id: String | nil,
        invoice_id: String | nil,
        paid: Telnyx::Internal::Type::Boolean | nil,
        period_end: Date | nil,
        period_start: Date | nil,
        url: String | nil
      }
    end
  end
end
