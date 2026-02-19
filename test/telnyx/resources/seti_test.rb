# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::SetiTest < Telnyx::Test::ResourceTest
  def test_retrieve_black_box_test_results
    skip("Mock server tests are disabled")

    response = @telnyx.seti.retrieve_black_box_test_results

    assert_pattern do
      response => Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::SetiRetrieveBlackBoxTestResultsResponse::Data]) | nil
      }
    end
  end
end
