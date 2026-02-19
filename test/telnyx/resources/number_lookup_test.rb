# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::NumberLookupTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.number_lookup.retrieve("+18665552368")

    assert_pattern do
      response => Telnyx::Models::NumberLookupRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::NumberLookupRetrieveResponse::Data | nil
      }
    end
  end
end
