# frozen_string_literal: true

module Telnyx
  module Resources
    class ExternalRequirements
      # Requirement Groups
      # @return [Telnyx::Resources::ExternalRequirements::SubNumberOrders]
      attr_reader :sub_number_orders

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @sub_number_orders = Telnyx::Resources::ExternalRequirements::SubNumberOrders.new(client: client)
      end
    end
  end
end
