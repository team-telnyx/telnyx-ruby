# frozen_string_literal: true

module Telnyx
  module Models
    module BundlePricing
      # @see Telnyx::Resources::BundlePricing::UserBundles#list_unused
      class UserBundleListUnusedResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::BundlePricing::UserBundleListUnusedResponse::Data>]
        required :data,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::BundlePricing::UserBundleListUnusedResponse::Data] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::BundlePricing::UserBundleListUnusedResponse::Data>]

        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute billing_bundle
          #
          #   @return [Telnyx::Models::BundlePricing::BillingBundleSummary]
          required :billing_bundle, -> { Telnyx::BundlePricing::BillingBundleSummary }

          # @!attribute user_bundle_ids
          #   List of user bundle IDs for given bundle.
          #
          #   @return [Array<String>]
          required :user_bundle_ids, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(billing_bundle:, user_bundle_ids:)
          #   @param billing_bundle [Telnyx::Models::BundlePricing::BillingBundleSummary]
          #
          #   @param user_bundle_ids [Array<String>] List of user bundle IDs for given bundle.
        end
      end
    end
  end
end
