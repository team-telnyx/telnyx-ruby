# frozen_string_literal: true

module Telnyx
  module Resources
    class LlmTokenGateway
      # Manage and report AI Gateway usage.
      # @return [Telnyx::Resources::LlmTokenGateway::Usage]
      attr_reader :usage

      # Manage and report AI Gateway usage.
      # @return [Telnyx::Resources::LlmTokenGateway::Spend]
      attr_reader :spend

      # Manage and report AI Gateway usage.
      # @return [Telnyx::Resources::LlmTokenGateway::TokenGroups]
      attr_reader :token_groups

      # Manage and report AI Gateway usage.
      # @return [Telnyx::Resources::LlmTokenGateway::TokenKeys]
      attr_reader :token_keys

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @usage = Telnyx::Resources::LlmTokenGateway::Usage.new(client: client)
        @spend = Telnyx::Resources::LlmTokenGateway::Spend.new(client: client)
        @token_groups = Telnyx::Resources::LlmTokenGateway::TokenGroups.new(client: client)
        @token_keys = Telnyx::Resources::LlmTokenGateway::TokenKeys.new(client: client)
      end
    end
  end
end
