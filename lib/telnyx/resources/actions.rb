# frozen_string_literal: true

module Telnyx
  module Resources
    class Actions
      # SIM Cards operations
      # @return [Telnyx::Resources::Actions::Purchase]
      attr_reader :purchase

      # SIM Cards operations
      # @return [Telnyx::Resources::Actions::Register]
      attr_reader :register

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @purchase = Telnyx::Resources::Actions::Purchase.new(client: client)
        @register = Telnyx::Resources::Actions::Register.new(client: client)
      end
    end
  end
end
