# frozen_string_literal: true

module Telnyx
  module Resources
    class Reputation
      # Associate phone numbers with an enterprise for reputation monitoring and
      # retrieve reputation scores
      # @return [Telnyx::Resources::Reputation::Numbers]
      attr_reader :numbers

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @numbers = Telnyx::Resources::Reputation::Numbers.new(client: client)
      end
    end
  end
end
