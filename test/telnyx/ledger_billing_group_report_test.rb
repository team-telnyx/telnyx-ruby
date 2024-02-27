# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class LedgerBillingGroupReportTest < Test::Unit::TestCase
    should "create ledger_billing_group_reports" do
      LedgerBillingGroupReport.create
      assert_requested :post, "#{Telnyx.api_base}/v2/ledger_billing_group_reports"
    end

    should "retrieve ledger_billing_group_reports" do
      ledger = LedgerBillingGroupReport.retrieve("70308070-fb3c-32ee-0a59-ce012cd4840d")
      assert_requested :get, "#{Telnyx.api_base}/v2/ledger_billing_group_reports/70308070-fb3c-32ee-0a59-ce012cd4840d"
      assert_kind_of LedgerBillingGroupReport, ledger
    end
  end
end
