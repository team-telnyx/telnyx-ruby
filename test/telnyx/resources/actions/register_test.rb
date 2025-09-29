# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Actions::RegisterTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.actions.register.create(registration_codes: %w[0000000001 0000000002 0000000003])

    assert_pattern do
      response => Telnyx::Models::Actions::RegisterCreateResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::SimpleSimCard]) | nil,
        errors: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Actions::RegisterCreateResponse::Error]) | nil
      }
    end
  end
end
