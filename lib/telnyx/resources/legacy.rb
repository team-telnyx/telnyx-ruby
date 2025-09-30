# frozen_string_literal: true

module Telnyx
  module Resources
    class Legacy
      # @return [Telnyx::Resources::Legacy::Reporting]
      attr_reader :reporting

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @reporting = Telnyx::Resources::Legacy::Reporting.new(client: client)
      end
    end
  end
end
