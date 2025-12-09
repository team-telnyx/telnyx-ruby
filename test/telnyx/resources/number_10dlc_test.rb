# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::Number10dlcTest < Telnyx::Test::ResourceTest
  def test_get_enum
    skip("Prism tests are disabled")

    response = @telnyx.number_10dlc.get_enum(:mno)

    assert_pattern do
      response => Telnyx::Models::Number10dlcGetEnumResponse
    end

    assert_pattern do
      case response
      in Telnyx::Models::Number10dlcGetEnumResponse::StringArray
      in Telnyx::Models::Number10dlcGetEnumResponse::EnumObjectListResponseArray
      in Telnyx::Models::Number10dlcGetEnumResponse::EnumObjectToStringResponseMap
      in Telnyx::Models::Number10dlcGetEnumResponse::EnumObjecToObjecttResponseMap
      in Telnyx::Models::Number10dlcGetEnumResponse::EnumPaginatedResponse
      end
    end
  end
end
