# typed: strong

module Telnyx
  module Resources
    class Messaging
      sig { returns(Telnyx::Resources::Messaging::Rcs) }
      attr_reader :rcs

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
