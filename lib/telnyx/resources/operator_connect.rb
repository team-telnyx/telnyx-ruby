# frozen_string_literal: true

module Telnyx
  module Resources
    class OperatorConnect
      # @return [Telnyx::Resources::OperatorConnect::Actions]
      attr_reader :actions

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @actions = Telnyx::Resources::OperatorConnect::Actions.new(client: client)
      end
    end
  end
end
