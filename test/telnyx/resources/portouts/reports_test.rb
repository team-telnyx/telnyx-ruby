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
      response => Telnyx::Models::Portouts::ReportListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Portouts::PortoutReport]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
