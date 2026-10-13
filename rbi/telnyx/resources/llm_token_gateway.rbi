# typed: strong

module Telnyx
  module Resources
    class LlmTokenGateway
      # Manage and report AI Gateway usage.
      sig { returns(Telnyx::Resources::LlmTokenGateway::Usage) }
      attr_reader :usage

      # Manage and report AI Gateway usage.
      sig { returns(Telnyx::Resources::LlmTokenGateway::Spend) }
      attr_reader :spend

      # Manage and report AI Gateway usage.
      sig { returns(Telnyx::Resources::LlmTokenGateway::TokenGroups) }
      attr_reader :token_groups

      # Manage and report AI Gateway usage.
      sig { returns(Telnyx::Resources::LlmTokenGateway::TokenKeys) }
      attr_reader :token_keys

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
