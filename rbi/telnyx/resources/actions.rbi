# typed: strong

module Telnyx
  module Resources
    class Actions
      sig { returns(Telnyx::Resources::Actions::Purchase) }
      attr_reader :purchase

      sig { returns(Telnyx::Resources::Actions::Register) }
      attr_reader :register

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
