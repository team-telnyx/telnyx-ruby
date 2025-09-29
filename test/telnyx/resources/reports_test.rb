# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::ReportsTest < Telnyx::Test::ResourceTest
  def test_list_mdrs
    skip("Prism tests are disabled")

    response = @telnyx.reports.list_mdrs

    assert_pattern do
      response => Telnyx::Models::ReportListMdrsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ReportListMdrsResponse::Data]) | nil,
        meta: Telnyx::Models::ReportListMdrsResponse::Meta | nil
      }
    end
  end

  def test_list_wdrs
    skip("Prism tests are disabled")

    response = @telnyx.reports.list_wdrs

    assert_pattern do
      response => Telnyx::Models::ReportListWdrsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ReportListWdrsResponse::Data]) | nil,
        meta: Telnyx::Models::ReportListWdrsResponse::Meta | nil
      }
    end
  end
end
