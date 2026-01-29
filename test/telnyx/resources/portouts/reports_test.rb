# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Portouts::ReportsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.portouts.reports.create(params: {filters: {}}, report_type: :export_portouts_csv)

    assert_pattern do
      response => Telnyx::Models::Portouts::ReportCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Portouts::PortoutReport | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.portouts.reports.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Portouts::ReportRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Portouts::PortoutReport | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.portouts.reports.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Portouts::PortoutReport
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: Time | nil,
        document_id: String | nil,
        params: Telnyx::Portouts::ExportPortoutsCsvReport | nil,
        record_type: String | nil,
        report_type: Telnyx::Portouts::PortoutReport::ReportType | nil,
        status: Telnyx::Portouts::PortoutReport::Status | nil,
        updated_at: Time | nil
      }
    end
  end
end
