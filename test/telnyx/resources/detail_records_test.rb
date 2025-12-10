# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::DetailRecordsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.detail_records.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::DetailRecordListResponse
    end

    assert_pattern do
      case row
      in Telnyx::Models::DetailRecordListResponse::MessageDetailRecord
      in Telnyx::Models::DetailRecordListResponse::ConferenceDetailRecord
      in Telnyx::Models::DetailRecordListResponse::ConferenceParticipantDetailRecord
      in Telnyx::Models::DetailRecordListResponse::AmdDetailRecord
      in Telnyx::Models::DetailRecordListResponse::VerifyDetailRecord
      in Telnyx::Models::DetailRecordListResponse::SimCardUsageDetailRecord
      in Telnyx::Models::DetailRecordListResponse::MediaStorageDetailRecord
      end
    end
  end
end
