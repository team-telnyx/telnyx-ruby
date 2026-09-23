# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MachinePaymentsTest < Telnyx::Test::ResourceTest
  def test_account_credit_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.machine_payments.account_credit(amount_usd: "10.00")

    assert_pattern do
      response => Telnyx::Models::MachinePaymentAccountCreditResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::MachinePaymentAccountCreditResponse::Data | nil
      }
    end
  end
end
