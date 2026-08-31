# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Knowledge
        # Create and manage logical collections of your Telnyx data, tune retrieval
        # settings, manage sources, and run collection-scoped semantic search.
        # @return [Telnyx::Resources::AI::Knowledge::Collections]
        attr_reader :collections

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @collections = Telnyx::Resources::AI::Knowledge::Collections.new(client: client)
        end
      end
    end
  end
end
