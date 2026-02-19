# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::NumbersFeaturesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.numbers_features.create(phone_numbers: ["string"])

    assert_pattern do
      response => Telnyx::Models::NumbersFeatureCreateResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::NumbersFeatureCreateResponse::Data]) | nil
      }
    end
  end
end
