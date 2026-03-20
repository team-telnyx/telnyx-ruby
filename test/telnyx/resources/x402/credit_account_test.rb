# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::X402::CreditAccountTest < Telnyx::Test::ResourceTest
  def test_create_quote_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.x402.credit_account.create_quote(amount_usd: "50.00")

    assert_pattern do
      response => Telnyx::Models::X402::CreditAccountCreateQuoteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::X402::CreditAccountCreateQuoteResponse::Data | nil
      }
    end
  end

  def test_settle_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.x402.credit_account.settle(id: "quote_abc123")

    assert_pattern do
      response => Telnyx::Models::X402::CreditAccountSettleResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::X402::CreditAccountSettleResponse::Data | nil
      }
    end
  end
end
