# frozen_string_literal: true

module Telnyx
  module Models
    module BundlePricing
      # @see Telnyx::Resources::BundlePricing::UserBundles#create
      class UserBundleCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::BundlePricing::UserBundle>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::BundlePricing::UserBundle] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::BundlePricing::UserBundle>]
      end
    end
  end
end
