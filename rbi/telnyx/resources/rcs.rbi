# typed: strong

module Telnyx
  module Resources
    class Rcs
      sig { returns(Telnyx::Resources::Rcs::Agents) }
      attr_reader :agents

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
