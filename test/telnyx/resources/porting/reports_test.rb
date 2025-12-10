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
      response => Telnyx::Models::Porting::ReportListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Porting::PortingReport]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
