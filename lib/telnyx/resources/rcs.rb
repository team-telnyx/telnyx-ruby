# frozen_string_literal: true

module Telnyx
  module Resources
    class Rcs
      # @return [Telnyx::Resources::Rcs::Agents]
      attr_reader :agents

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @agents = Telnyx::Resources::Rcs::Agents.new(client: client)
      end
    end
  end
end
