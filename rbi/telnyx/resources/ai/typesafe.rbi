# typed: strong

module Telnyx
  module Resources
    class AI
      class Typesafe
        # Beta API for evaluating shared context with typed questions and structured
        # answers. Telnyx manages model selection.
        sig { returns(Telnyx::Resources::AI::Typesafe::V1) }
        attr_reader :v1

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
