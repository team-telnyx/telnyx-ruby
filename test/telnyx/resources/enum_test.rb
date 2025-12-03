# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::EnumTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.enum.retrieve(:mno)

    assert_pattern do
      response => Telnyx::Models::EnumRetrieveResponse
    end

    assert_pattern do
      case response
      in Telnyx::Models::EnumRetrieveResponse::EnumListResponseArray
      in Telnyx::Internal::Type::Unknown
      end
    end
  end
end
