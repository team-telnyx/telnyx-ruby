# typed: strong

module Telnyx
  module Resources
    class LlmTokenGateway
      # Manage and report AI Gateway traffic.
      sig { returns(Telnyx::Resources::LlmTokenGateway::Usage) }
      attr_reader :usage

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
