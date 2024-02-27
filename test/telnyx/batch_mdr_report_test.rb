# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class BatchMdrReportTest < Test::Unit::TestCase
    should "list batch mdr reports" do
      batch_mdr_reports = BatchMdrReport.list
      assert_requested :get, "#{Telnyx.api_base}/v2/reports/batch_mdr_reports"
      assert_kind_of ListObject, batch_mdr_reports
      assert_kind_of TelnyxObject, batch_mdr_reports.first
    end

    should "create batch mdr report" do
      BatchMdrReport.create(
        end_date: "2024-12-02T00:00:00-06:00",
        start_date: "2024-12-01T00:00:00-06:00"
      )
      assert_requested :post, "#{Telnyx.api_base}/v2/reports/batch_mdr_reports"
    end

    should "retrieve batch mdr report" do
      batch_mdr_batch = BatchMdrReport.retrieve("id")
      assert_requested :get, "#{Telnyx.api_base}/v2/reports/batch_mdr_reports/id"
      assert_kind_of TelnyxObject, batch_mdr_batch
    end

    should "delete batch mdr report" do
      batch_mdr_batch = BatchMdrReport.retrieve("id")
      id = batch_mdr_batch.id.gsub(/\s+/, "+").freeze
      batch_mdr_batch.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/reports/batch_mdr_reports/#{id}"
    end
  end
end
