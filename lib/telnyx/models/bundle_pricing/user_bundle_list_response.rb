# frozen_string_literal: true

module Telnyx
  module Models
    module BundlePricing
      # @see Telnyx::Resources::BundlePricing::UserBundles#list
      class UserBundleListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::BundlePricing::UserBundle>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::BundlePricing::UserBundle] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::BundlePricing::PaginationResponse]
        required :meta, -> { Telnyx::BundlePricing::PaginationResponse }

        # @!method initialize(data:, meta:)
        #   @param data [Array<Telnyx::Models::BundlePricing::UserBundle>]
        #   @param meta [Telnyx::Models::BundlePricing::PaginationResponse]
      end
    end
  end
end
