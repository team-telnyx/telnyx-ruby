# frozen_string_literal: true

module Telnyx
  module Models
    module BundlePricing
      # @see Telnyx::Resources::BundlePricing::BillingBundles#list
      class BillingBundleListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::BundlePricing::BillingBundleSummary>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::BundlePricing::BillingBundleSummary] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::BundlePricing::PaginationResponse]
        required :meta, -> { Telnyx::BundlePricing::PaginationResponse }

        # @!method initialize(data:, meta:)
        #   @param data [Array<Telnyx::Models::BundlePricing::BillingBundleSummary>]
        #   @param meta [Telnyx::Models::BundlePricing::PaginationResponse]
      end
    end
  end
end
