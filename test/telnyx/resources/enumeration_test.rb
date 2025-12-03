# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::EnumerationTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.enumeration.retrieve(:mno)

    assert_pattern do
      response => Telnyx::Models::EnumerationRetrieveResponse
    end

    assert_pattern do
      case response
      in Telnyx::Models::EnumerationRetrieveResponse::StringArray
      in Telnyx::Internal::Type::Unknown
      end
    end
  end
end
