# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Typesafe
        # Beta API for evaluating shared context with typed questions and structured
        # answers. Telnyx manages model selection.
        # @return [Telnyx::Resources::AI::Typesafe::V1]
        attr_reader :v1

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @v1 = Telnyx::Resources::AI::Typesafe::V1.new(client: client)
        end
      end
    end
  end
end
