# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::InvoicesTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

    response = @telnyx.invoices.list

    assert_pattern do
      response => Telnyx::Models::InvoiceListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::InvoiceListResponse::Data]) | nil,
        meta: Telnyx::Models::InvoiceListResponse::Meta | nil
      }
    end
  end
end
