# frozen_string_literal: true

module Telnyx
  module Models
    module BundlePricing
      # @see Telnyx::Resources::BundlePricing::UserBundles#list_resources
      class UserBundleListResourcesResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::BundlePricing::UserBundleResource>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::BundlePricing::UserBundleResource] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::BundlePricing::UserBundleResource>]
      end
    end
  end
end
