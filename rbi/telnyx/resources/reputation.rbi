# typed: strong

module Telnyx
  module Resources
    class Reputation
      # Phone-number reputation monitoring (spam-score lookup and tracking).
      sig { returns(Telnyx::Resources::Reputation::Numbers) }
      attr_reader :numbers

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
