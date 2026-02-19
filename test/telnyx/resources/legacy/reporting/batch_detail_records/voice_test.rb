# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::Legacy::Reporting::BatchDetailRecords::VoiceTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.legacy.reporting.batch_detail_records.voice.create(
        end_time: "2024-02-12T23:59:59Z",
        start_time: "2024-02-01T00:00:00Z"
      )

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response =
      @telnyx.legacy.reporting.batch_detail_records.voice.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.legacy.reporting.batch_detail_records.voice.list

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse]) | nil,
        meta: Telnyx::Legacy::Reporting::BatchDetailRecords::BatchCsvPaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response =
      @telnyx.legacy.reporting.batch_detail_records.voice.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse | nil
      }
    end
  end

  def test_retrieve_fields
    skip("Mock server tests are disabled")

    response = @telnyx.legacy.reporting.batch_detail_records.voice.retrieve_fields

    assert_pattern do
      response => Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceRetrieveFieldsResponse
    end

    assert_pattern do
      response => {
        billing: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        interaction_data: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        number_information: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        telephony_data: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end
end
