# typed: strong

module Telnyx
  module Resources
    class AI
      class Anthropic
        sig { returns(Telnyx::Resources::AI::Anthropic::V1) }
        attr_reader :v1

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
