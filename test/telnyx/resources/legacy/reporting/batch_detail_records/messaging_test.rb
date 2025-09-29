# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::Legacy::Reporting::BatchDetailRecords::MessagingTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.legacy.reporting.batch_detail_records.messaging.create(
        end_time: "2024-02-12T23:59:59Z",
        start_time: "2024-02-01T00:00:00Z"
      )

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response =
      @telnyx.legacy.reporting.batch_detail_records.messaging.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.legacy.reporting.batch_detail_records.messaging.list

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingListResponse::Data]) | nil,
        meta: Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingListResponse::Meta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response =
      @telnyx.legacy.reporting.batch_detail_records.messaging.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data | nil
      }
    end
  end
end
