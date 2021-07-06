# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class WirelessDetailRecordsReportTest < Test::Unit::TestCase
    should "list detail records report" do
      stub = stub_request(:get, "#{Telnyx.api_base}/v2/wireless/detail_records_reports")
             .to_return(body: JSON.generate(data: [FIXTURE]))
      detail_records_report = WirelessDetailRecordsReport.list
      # assert_requested :get, "#{Telnyx.api_base}/v2/detail_records_report"
      assert_requested stub
      assert_kind_of ListObject, detail_records_report
      assert_kind_of WirelessDetailRecordsReport, detail_records_report.first
    end

    should "create detail records report" do
      stub = stub_request(:post, "#{Telnyx.api_base}/v2/wireless/detail_records_reports")
             .to_return(body: JSON.generate(data: FIXTURE))
      detail_records_report = WirelessDetailRecordsReport.create
      # assert_requested :post, "#{Telnyx.api_base}/v2/detail_records_report"
      assert_requested stub
      assert_kind_of WirelessDetailRecordsReport, detail_records_report
    end

    should "retrieve detail records report" do
      stub = stub_request(:get, "#{Telnyx.api_base}/v2/wireless/detail_records_reports/id")
             .to_return(body: JSON.generate(data: FIXTURE))
      detail_records_report = WirelessDetailRecordsReport.retrieve("id")
      # assert_requested :get, "#{Telnyx.api_base}/v2/detail_records_report/id"
      assert_requested stub
      assert_kind_of WirelessDetailRecordsReport, detail_records_report
    end

    should "delete detail records report" do
      stub_request(:get, "#{Telnyx.api_base}/v2/wireless/detail_records_reports/id")
        .to_return(body: JSON.generate(data: FIXTURE))
      stub = stub_request(:delete, "#{Telnyx.api_base}/v2/wireless/detail_records_reports/id")
             .to_return(body: JSON.generate(data: FIXTURE))
      detail_records_report = WirelessDetailRecordsReport.retrieve("id")

      detail_records_report.delete
      # assert_requested :delete, "#{Telnyx.api_base}/v2/detail_records_report/id"
      assert_requested stub
    end

    FIXTURE = {
      "created_at" => "2018-02-02T22:25:27.521Z",
      "id" => "id",
      "record_type" => "detail_records_report",
      "updated_at" => "2018-02-02T22:25:27.521Z",
      "end_time" => "2018-02-02T22:25:27.521Z",
      "start_time" => "2018-02-02T22:25:27.521Z",
      "report_url" => "http://example.com",
      "status" => "pending",
    }.freeze
  end
end
