# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::Messaging10dlcTest < Telnyx::Test::ResourceTest
  def test_get_enum
    skip("Mock server tests are disabled")

    response = @telnyx.messaging_10dlc.get_enum(:mno)

    assert_pattern do
      response => Telnyx::Models::Messaging10dlcGetEnumResponse
    end

    assert_pattern do
      case response
      in Telnyx::Models::Messaging10dlcGetEnumResponse::StringArray
      in Telnyx::Models::Messaging10dlcGetEnumResponse::EnumObjectListResponseArray
      in Telnyx::Models::Messaging10dlcGetEnumResponse::EnumObjectToStringResponseMap
      in Telnyx::Models::Messaging10dlcGetEnumResponse::EnumObjecToObjecttResponseMap
      in Telnyx::Models::Messaging10dlcGetEnumResponse::EnumPaginatedResponse
      end
    end
  end
end
