# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::BalanceTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.balance.retrieve

    assert_pattern do
      response => Telnyx::Models::BalanceRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::BalanceRetrieveResponse::Data | nil
      }
    end
  end
end
