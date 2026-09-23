# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::NoiseSuppressionEnginesTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.noise_suppression_engines.list

    assert_pattern do
      response => Telnyx::Models::NoiseSuppressionEngineListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::NoiseSuppressionEngineListResponse::Data])
      }
    end
  end
end
