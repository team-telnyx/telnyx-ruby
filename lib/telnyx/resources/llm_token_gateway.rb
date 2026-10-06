# frozen_string_literal: true

module Telnyx
  module Resources
    class LlmTokenGateway
      # Manage and report AI Gateway traffic.
      # @return [Telnyx::Resources::LlmTokenGateway::Usage]
      attr_reader :usage

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @usage = Telnyx::Resources::LlmTokenGateway::Usage.new(client: client)
      end
    end
  end
end
