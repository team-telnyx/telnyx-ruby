# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::X402::CreditAccount::PaymentsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.x402.credit_account.payments.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::X402::CreditAccount::PaymentRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::X402::CreditAccount::X402TransactionRecord | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.x402.credit_account.payments.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::X402::CreditAccount::X402TransactionRecord
    end

    assert_pattern do
      row => {
        id: String | nil,
        amount: String | nil,
        created_at: Time | nil,
        currency: String | nil,
        quote_id: String | nil,
        record_type: Telnyx::X402::CreditAccount::X402TransactionRecord::RecordType | nil,
        status: Telnyx::X402::CreditAccount::X402TransactionRecord::Status | nil,
        tx_hash: String | nil,
        updated_at: Time | nil
      }
    end
  end
end
