# frozen_string_literal: true

module Telnyx
  module Resources
    class TermsOfService
      # Terms of Service agreement endpoints
      # @return [Telnyx::Resources::TermsOfService::NumberReputation]
      attr_reader :number_reputation

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @number_reputation = Telnyx::Resources::TermsOfService::NumberReputation.new(client: client)
      end
    end
  end
end
