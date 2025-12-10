# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::Number10dlcTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.number_10dlc.retrieve(:mno)

    assert_pattern do
      response => Telnyx::Models::Number10dlcRetrieveResponse
    end

    assert_pattern do
      case response
      in Telnyx::Models::Number10dlcRetrieveResponse::StringArray
      in Telnyx::Models::Number10dlcRetrieveResponse::EnumObjectListResponseArray
      in Telnyx::Models::Number10dlcRetrieveResponse::EnumObjectToStringResponseMap
      in Telnyx::Models::Number10dlcRetrieveResponse::EnumObjecToObjecttResponseMap
      in Telnyx::Models::Number10dlcRetrieveResponse::EnumPaginatedResponse
      end
    end
  end
end
