# typed: strong

module Telnyx
  module Resources
    class OperatorConnect
      sig { returns(Telnyx::Resources::OperatorConnect::Actions) }
      attr_reader :actions

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
