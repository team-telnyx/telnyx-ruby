# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::ReportsTest < Telnyx::Test::ResourceTest
  def test_list_mdrs
    skip("Mock server tests are disabled")

    response = @telnyx.reports.list_mdrs

    assert_pattern do
      response => Telnyx::Models::ReportListMdrsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ReportListMdrsResponse::Data]) | nil,
        meta: Telnyx::Reports::PaginationMetaReporting | nil
      }
    end
  end

  def test_list_wdrs
    skip("Mock server tests are disabled")

    response = @telnyx.reports.list_wdrs

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::ReportListWdrsResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        cost: Telnyx::Models::ReportListWdrsResponse::Cost | nil,
        created_at: Time | nil,
        downlink_data: Telnyx::Models::ReportListWdrsResponse::DownlinkData | nil,
        duration_seconds: Float | nil,
        imsi: String | nil,
        mcc: String | nil,
        mnc: String | nil,
        phone_number: String | nil,
        rate: Telnyx::Models::ReportListWdrsResponse::Rate | nil,
        record_type: String | nil,
        sim_card_id: String | nil,
        sim_group_id: String | nil,
        sim_group_name: String | nil,
        uplink_data: Telnyx::Models::ReportListWdrsResponse::UplinkData | nil
      }
    end
  end
end
