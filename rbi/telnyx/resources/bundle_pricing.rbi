# typed: strong

module Telnyx
  module Resources
    class BundlePricing
      sig { returns(Telnyx::Resources::BundlePricing::BillingBundles) }
      attr_reader :billing_bundles

      sig { returns(Telnyx::Resources::BundlePricing::UserBundles) }
      attr_reader :user_bundles

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
