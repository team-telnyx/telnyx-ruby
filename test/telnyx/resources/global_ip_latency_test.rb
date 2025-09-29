# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::GlobalIPLatencyTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.global_ip_latency.retrieve

    assert_pattern do
      response => Telnyx::Models::GlobalIPLatencyRetrieveResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::GlobalIPLatencyRetrieveResponse::Data]) | nil
      }
    end
  end
end
