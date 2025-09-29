# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::SubNumberOrdersReportTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.sub_number_orders_report.create

    assert_pattern do
      response => Telnyx::Models::SubNumberOrdersReportCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::SubNumberOrdersReportCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.sub_number_orders_report.retrieve("12ade33a-21c0-473b-b055-b3c836e1c293")

    assert_pattern do
      response => Telnyx::Models::SubNumberOrdersReportRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::SubNumberOrdersReportRetrieveResponse::Data | nil
      }
    end
  end

  def test_download
    skip("Prism tests are disabled")

    response = @telnyx.sub_number_orders_report.download("12ade33a-21c0-473b-b055-b3c836e1c293")

    assert_pattern do
      response => StringIO
    end
  end
end
