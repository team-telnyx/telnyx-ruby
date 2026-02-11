# typed: strong

module Telnyx
  module Resources
    class AI
      class OpenAI
        sig { returns(Telnyx::Resources::AI::OpenAI::Embeddings) }
        attr_reader :embeddings

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
