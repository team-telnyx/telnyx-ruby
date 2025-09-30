# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Actions::PurchaseTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.actions.purchase.create(amount: 10)

    assert_pattern do
      response => Telnyx::Models::Actions::PurchaseCreateResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::SimpleSimCard]) | nil,
        errors: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Actions::PurchaseCreateResponse::Error]) | nil
      }
    end
  end
end
