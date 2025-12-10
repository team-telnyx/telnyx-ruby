# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::BundlePricing::BillingBundlesTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.bundle_pricing.billing_bundles.retrieve("8661948c-a386-4385-837f-af00f40f111a")

    assert_pattern do
      response => Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.bundle_pricing.billing_bundles.list

    assert_pattern do
      response => Telnyx::Internal::DefaultPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::BundlePricing::BillingBundleSummary
    end

    assert_pattern do
      row => {
        id: String,
        cost_code: String,
        created_at: Date,
        is_public: Telnyx::Internal::Type::Boolean,
        name: String,
        currency: String | nil,
        mrc_price: Float | nil,
        slug: String | nil,
        specs: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end
end
