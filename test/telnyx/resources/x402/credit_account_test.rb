# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::X402::CreditAccountTest < Telnyx::Test::ResourceTest
  def test_create_payment_quote_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.x402.credit_account.create_payment_quote(amount_usd: "50.00")

    assert_pattern do
      response => Telnyx::Models::X402::CreditAccountCreatePaymentQuoteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::X402::CreditAccountCreatePaymentQuoteResponse::Data | nil
      }
    end
  end

  def test_settle_payment_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.x402.credit_account.settle_payment(id: "quote_abc123")

    assert_pattern do
      response => Telnyx::Models::X402::CreditAccountSettlePaymentResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::X402::CreditAccountSettlePaymentResponse::Data | nil
      }
    end
  end
end
