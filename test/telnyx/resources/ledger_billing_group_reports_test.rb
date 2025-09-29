# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::LedgerBillingGroupReportsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.ledger_billing_group_reports.create

    assert_pattern do
      response => Telnyx::Models::LedgerBillingGroupReportCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::LedgerBillingGroupReport | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.ledger_billing_group_reports.retrieve("f5586561-8ff0-4291-a0ac-84fe544797bd")

    assert_pattern do
      response => Telnyx::Models::LedgerBillingGroupReportRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::LedgerBillingGroupReport | nil
      }
    end
  end
end
