# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Anthropic
        # @return [Telnyx::Resources::AI::Anthropic::V1]
        attr_reader :v1

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @v1 = Telnyx::Resources::AI::Anthropic::V1.new(client: client)
        end
      end
    end
  end
end
