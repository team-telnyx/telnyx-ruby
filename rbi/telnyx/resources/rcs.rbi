# typed: strong

module Telnyx
  module Resources
    class Rcs
      # Manage RCS agent registration, testing, verification, and launch.
      sig { returns(Telnyx::Resources::Rcs::Agents) }
      attr_reader :agents

      # Manage the legal business entities that operate RCS agents.
      sig { returns(Telnyx::Resources::Rcs::Brands) }
      attr_reader :brands

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
