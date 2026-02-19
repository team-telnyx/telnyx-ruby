# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MessagingHostedNumbersTest < Telnyx::Test::ResourceTest
  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.messaging_hosted_numbers.delete("id")

    assert_pattern do
      response => Telnyx::Models::MessagingHostedNumberDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MessagingHostedNumberOrder | nil
      }
    end
  end
end
