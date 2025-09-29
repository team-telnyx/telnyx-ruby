# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::BundlePricing::UserBundlesTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.bundle_pricing.user_bundles.create

    assert_pattern do
      response => Telnyx::Models::BundlePricing::UserBundleCreateResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::BundlePricing::UserBundle])
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.bundle_pricing.user_bundles.retrieve("ca1d2263-d1f1-43ac-ba53-248e7a4bb26a")

    assert_pattern do
      response => Telnyx::Models::BundlePricing::UserBundleRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::BundlePricing::UserBundle
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.bundle_pricing.user_bundles.list

    assert_pattern do
      response => Telnyx::Models::BundlePricing::UserBundleListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::BundlePricing::UserBundle]),
        meta: Telnyx::BundlePricing::PaginationResponse
      }
    end
  end

  def test_deactivate
    skip("Prism tests are disabled")

    response = @telnyx.bundle_pricing.user_bundles.deactivate("ca1d2263-d1f1-43ac-ba53-248e7a4bb26a")

    assert_pattern do
      response => Telnyx::Models::BundlePricing::UserBundleDeactivateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::BundlePricing::UserBundle
      }
    end
  end

  def test_list_resources
    skip("Prism tests are disabled")

    response = @telnyx.bundle_pricing.user_bundles.list_resources("ca1d2263-d1f1-43ac-ba53-248e7a4bb26a")

    assert_pattern do
      response => Telnyx::Models::BundlePricing::UserBundleListResourcesResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::BundlePricing::UserBundleResource])
      }
    end
  end

  def test_list_unused
    skip("Prism tests are disabled")

    response = @telnyx.bundle_pricing.user_bundles.list_unused

    assert_pattern do
      response => Telnyx::Models::BundlePricing::UserBundleListUnusedResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::BundlePricing::UserBundleListUnusedResponse::Data])
      }
    end
  end
end
