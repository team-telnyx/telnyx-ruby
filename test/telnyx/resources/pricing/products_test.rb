# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Pricing::ProductsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.pricing.products.retrieve("slug")

    assert_pattern do
      response => Telnyx::Models::Pricing::ProductRetrieveResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Pricing::ProductRetrieveResponse::Data]),
        meta: Telnyx::Pricing::PricingPaginationMeta
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.pricing.products.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPaginationForInexplicitNumberOrders
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Pricing::ProductListResponse
    end

    assert_pattern do
      row => {
        description: String,
        name: String,
        slug: String
      }
    end
  end
end
