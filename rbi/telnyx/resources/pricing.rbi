# typed: strong

module Telnyx
  module Resources
    class Pricing
      # Public pricing operations
      sig { returns(Telnyx::Resources::Pricing::Products) }
      attr_reader :products

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
