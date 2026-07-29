# frozen_string_literal: true

module Telnyx
  module Resources
    class Pricing
      # Public pricing operations
      # @return [Telnyx::Resources::Pricing::Products]
      attr_reader :products

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @products = Telnyx::Resources::Pricing::Products.new(client: client)
      end
    end
  end
end
