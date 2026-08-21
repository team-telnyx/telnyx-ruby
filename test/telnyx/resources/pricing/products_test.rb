# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Pricing::ProductsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.pricing.products.retrieve("slug")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Pricing::ProductRetrieveResponse
    end

    assert_pattern do
      row => {
        cached_input_rate: String | nil,
        cached_input_tiers: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Pricing::PricingTier]) | nil,
        country_iso: String | nil,
        currency: String | nil,
        direction: String | nil,
        input_rate: String | nil,
        input_tiers: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Pricing::PricingTier]) | nil,
        model: String | nil,
        name: String | nil,
        note: String | nil,
        output_rate: String | nil,
        output_tiers: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Pricing::PricingTier]) | nil,
        pricing_type: String | nil,
        rate: Telnyx::Models::Pricing::ProductRetrieveResponse::Rate | nil,
        tiers: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Pricing::PricingTier]) | nil,
        type: String | nil,
        unit: String | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.pricing.products.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
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
