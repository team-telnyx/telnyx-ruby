# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Memory
        # Whether a write has finished.
        # @return [Telnyx::Resources::AI::Memory::Namespaces]
        attr_reader :namespaces

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @namespaces = Telnyx::Resources::AI::Memory::Namespaces.new(client: client)
        end
      end
    end
  end
end
