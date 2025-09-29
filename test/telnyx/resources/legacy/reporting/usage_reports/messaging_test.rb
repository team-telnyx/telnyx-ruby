# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::Legacy::Reporting::UsageReports::MessagingTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.legacy.reporting.usage_reports.messaging.create(aggregation_type: 0)

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::UsageReports::MessagingCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Legacy::Reporting::UsageReports::MessagingCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response =
      @telnyx.legacy.reporting.usage_reports.messaging.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::UsageReports::MessagingRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Legacy::Reporting::UsageReports::MessagingRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.legacy.reporting.usage_reports.messaging.list

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::UsageReports::MessagingListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Legacy::Reporting::UsageReports::MessagingListResponse::Data]) | nil,
        meta: Telnyx::Models::Legacy::Reporting::UsageReports::MessagingListResponse::Meta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response =
      @telnyx.legacy.reporting.usage_reports.messaging.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::UsageReports::MessagingDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Legacy::Reporting::UsageReports::MessagingDeleteResponse::Data | nil
      }
    end
  end
end
