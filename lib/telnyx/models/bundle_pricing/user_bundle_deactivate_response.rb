# frozen_string_literal: true

module Telnyx
  module Models
    module BundlePricing
      # @see Telnyx::Resources::BundlePricing::UserBundles#deactivate
      class UserBundleDeactivateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::BundlePricing::UserBundle]
        required :data, -> { Telnyx::BundlePricing::UserBundle }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::BundlePricing::UserBundle]
      end
    end
  end
end
