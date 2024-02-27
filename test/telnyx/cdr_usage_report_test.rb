# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class CdrUsageReportTest < Test::Unit::TestCase
    should "list of sync cdr usage reports" do
      omit "ID req mismatch"
      cdr_usage_report = CdrUsageReport.sync
      assert_requested :get, "#{Telnyx.api_base}/v2/reports/cdr_usage_reports/sync"

      assert_kind_of ListObject, cdr_usage_report
    end
  end
end
