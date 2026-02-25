# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::PaymentTest < Telnyx::Test::ResourceTest
  def test_create_stored_payment_transaction_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.payment.create_stored_payment_transaction(amount: "120.00")

    assert_pattern do
      response => Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::PaymentCreateStoredPaymentTransactionResponse::Data | nil
      }
    end
  end
end
