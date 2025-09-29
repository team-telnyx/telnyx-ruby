# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::PortabilityChecksTest < Telnyx::Test::ResourceTest
  def test_run
    skip("Prism tests are disabled")

    response = @telnyx.portability_checks.run

    assert_pattern do
      response => Telnyx::Models::PortabilityCheckRunResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PortabilityCheckRunResponse::Data]) | nil
      }
    end
  end
end
