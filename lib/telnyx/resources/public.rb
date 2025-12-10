# frozen_string_literal: true

module Telnyx
  module Resources
    class Public
      # @return [Telnyx::Resources::Public::Brand]
      attr_reader :brand

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @brand = Telnyx::Resources::Public::Brand.new(client: client)
      end
    end
  end
end
