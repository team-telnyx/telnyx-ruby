# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class MdrUsageReportTest < Test::Unit::TestCase
    setup do
      @id = "d5cced2b-b3c2-7c43-4d8e-0d834c87f7e8"
    end
    should "list mdr usage reports" do
      mdr_usage_reports = MdrUsageReport.list
      assert_requested :get, "#{Telnyx.api_base}/v2/reports/mdr_usage_reports"
      assert_kind_of ListObject, mdr_usage_reports
      assert_kind_of TelnyxObject, mdr_usage_reports.first
    end

    should "create mdr usage report" do
      MdrUsageReport.create(
        end_date: "2024-12-02T00:00:00-06:00",
        start_date: "2024-12-01T00:00:00-06:00",
        aggregation_type: "PROFILE"
      )
      assert_requested :post, "#{Telnyx.api_base}/v2/reports/mdr_usage_reports"
    end

    should "retrieve mdr usage report" do
      mdr_usage_report = MdrUsageReport.retrieve(@id)
      assert_requested :get, "#{Telnyx.api_base}/v2/reports/mdr_usage_reports/#{@id}"
      assert_kind_of TelnyxObject, mdr_usage_report
    end

    should "delete mdr usage report" do
      mdr_usage_report = MdrUsageReport.retrieve(@id)
      id = mdr_usage_report.id.gsub(/\s+/, "+").freeze
      mdr_usage_report.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/reports/mdr_usage_reports/#{id}"
    end

    should "list of sync mdr_usage_reports" do
      mdr_usage_report = MdrUsageReport.sync
      assert_requested :get, "#{Telnyx.api_base}/v2/reports/cdr_usage_reports/sync"

      assert_kind_of ListObject, mdr_usage_report
    end
  end
end
