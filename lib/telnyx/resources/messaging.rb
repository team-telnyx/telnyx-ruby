# frozen_string_literal: true

module Telnyx
  module Resources
    class Messaging
      # @return [Telnyx::Resources::Messaging::Rcs]
      attr_reader :rcs

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @rcs = Telnyx::Resources::Messaging::Rcs.new(client: client)
      end
    end
  end
end
