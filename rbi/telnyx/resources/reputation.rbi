# typed: strong

module Telnyx
  module Resources
    class Reputation
      # Associate phone numbers with an enterprise for reputation monitoring and
      # retrieve reputation scores
      sig { returns(Telnyx::Resources::Reputation::Numbers) }
      attr_reader :numbers

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
