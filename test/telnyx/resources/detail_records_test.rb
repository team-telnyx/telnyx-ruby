# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::DetailRecordsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.detail_records.list

    assert_pattern do
      response => Telnyx::Models::DetailRecordListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[union: Telnyx::Models::DetailRecordListResponse::Data]) | nil,
        meta: Telnyx::Models::DetailRecordListResponse::Meta | nil
      }
    end
  end
end
