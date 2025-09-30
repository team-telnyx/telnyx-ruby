# frozen_string_literal: true

module Telnyx
  module Resources
    class BundlePricing
      # @return [Telnyx::Resources::BundlePricing::BillingBundles]
      attr_reader :billing_bundles

      # @return [Telnyx::Resources::BundlePricing::UserBundles]
      attr_reader :user_bundles

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @billing_bundles = Telnyx::Resources::BundlePricing::BillingBundles.new(client: client)
        @user_bundles = Telnyx::Resources::BundlePricing::UserBundles.new(client: client)
      end
    end
  end
end
