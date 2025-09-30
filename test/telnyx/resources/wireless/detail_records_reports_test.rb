# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Wireless::DetailRecordsReportsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.wireless.detail_records_reports.create

    assert_pattern do
      response => Telnyx::Models::Wireless::DetailRecordsReportCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Wireless::WdrReport | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.wireless.detail_records_reports.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::Wireless::DetailRecordsReportRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Wireless::WdrReport | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.wireless.detail_records_reports.list

    assert_pattern do
      response => Telnyx::Models::Wireless::DetailRecordsReportListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Wireless::WdrReport]) | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.wireless.detail_records_reports.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::Wireless::DetailRecordsReportDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Wireless::WdrReport | nil
      }
    end
  end
end
