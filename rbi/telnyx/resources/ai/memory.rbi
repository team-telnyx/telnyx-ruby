# typed: strong

module Telnyx
  module Resources
    class AI
      class Memory
        # Whether a write has finished.
        sig { returns(Telnyx::Resources::AI::Memory::Namespaces) }
        attr_reader :namespaces

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
