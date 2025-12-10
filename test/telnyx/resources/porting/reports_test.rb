# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Porting::ReportsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.porting.reports.create(params: {filters: {}}, report_type: :export_porting_orders_csv)

    assert_pattern do
      response => Telnyx::Models::Porting::ReportCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Porting::PortingReport | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.porting.reports.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Porting::ReportRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Porting::PortingReport | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.porting.reports.list

    assert_pattern do
      response => Telnyx::Internal::DefaultPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Porting::PortingReport
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: Time | nil,
        document_id: String | nil,
        params: Telnyx::Porting::ExportPortingOrdersCsvReport | nil,
        record_type: String | nil,
        report_type: Telnyx::Porting::PortingReport::ReportType | nil,
        status: Telnyx::Porting::PortingReport::Status | nil,
        updated_at: Time | nil
      }
    end
  end
end
