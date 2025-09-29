# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::QueuesTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.queues.retrieve("queue_name")

    assert_pattern do
      response => Telnyx::Models::QueueRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::QueueRetrieveResponse::Data | nil
      }
    end
  end
end
