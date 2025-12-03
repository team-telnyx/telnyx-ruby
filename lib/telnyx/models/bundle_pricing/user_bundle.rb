# frozen_string_literal: true

module Telnyx
  module Models
    module BundlePricing
      # @see Telnyx::Resources::BundlePricing::UserBundles#list
      class UserBundle < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   User bundle's ID, this is used to identify the user bundle in the API.
        #
        #   @return [String]
        required :id, String

        # @!attribute active
        #   Status of the user bundle.
        #
        #   @return [Boolean]
        required :active, Telnyx::Internal::Type::Boolean

        # @!attribute billing_bundle
        #
        #   @return [Telnyx::Models::BundlePricing::BillingBundleSummary]
        required :billing_bundle, -> { Telnyx::BundlePricing::BillingBundleSummary }

        # @!attribute created_at
        #   Date the user bundle was created.
        #
        #   @return [Date]
        required :created_at, Date

        # @!attribute resources
        #
        #   @return [Array<Telnyx::Models::BundlePricing::UserBundleResource>]
        required :resources, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::BundlePricing::UserBundleResource] }

        # @!attribute user_id
        #   The customer's ID that owns this user bundle.
        #
        #   @return [String]
        required :user_id, String

        # @!attribute updated_at
        #   Date the user bundle was last updated.
        #
        #   @return [Date, nil]
        optional :updated_at, Date, nil?: true

        # @!method initialize(id:, active:, billing_bundle:, created_at:, resources:, user_id:, updated_at: nil)
        #   @param id [String] User bundle's ID, this is used to identify the user bundle in the API.
        #
        #   @param active [Boolean] Status of the user bundle.
        #
        #   @param billing_bundle [Telnyx::Models::BundlePricing::BillingBundleSummary]
        #
        #   @param created_at [Date] Date the user bundle was created.
        #
        #   @param resources [Array<Telnyx::Models::BundlePricing::UserBundleResource>]
        #
        #   @param user_id [String] The customer's ID that owns this user bundle.
        #
        #   @param updated_at [Date, nil] Date the user bundle was last updated.
      end
    end
  end
end
