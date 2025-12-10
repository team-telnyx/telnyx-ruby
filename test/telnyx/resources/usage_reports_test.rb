# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::UsageReportsTest < Telnyx::Test::ResourceTest
  def test_list_required_params
    skip("Prism tests are disabled")

    response = @telnyx.usage_reports.list(dimensions: ["string"], metrics: ["string"], product: "product")

    assert_pattern do
      response => Telnyx::Models::UsageReportListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]) | nil,
        meta: Telnyx::Models::UsageReportListResponse::Meta | nil
      }
    end
  end

  def test_get_options
    skip("Prism tests are disabled")

    response = @telnyx.usage_reports.get_options

    assert_pattern do
      response => Telnyx::Models::UsageReportGetOptionsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::UsageReportGetOptionsResponse::Data]) | nil
      }
    end
  end
end
