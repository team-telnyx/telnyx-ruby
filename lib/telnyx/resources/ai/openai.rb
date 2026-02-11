# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class OpenAI
        # @return [Telnyx::Resources::AI::OpenAI::Embeddings]
        attr_reader :embeddings

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @embeddings = Telnyx::Resources::AI::OpenAI::Embeddings.new(client: client)
        end
      end
    end
  end
end
