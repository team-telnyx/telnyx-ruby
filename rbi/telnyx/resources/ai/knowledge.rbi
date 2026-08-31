# typed: strong

module Telnyx
  module Resources
    class AI
      class Knowledge
        # Create and manage logical collections of your Telnyx data, tune retrieval
        # settings, manage sources, and run collection-scoped semantic search.
        sig { returns(Telnyx::Resources::AI::Knowledge::Collections) }
        attr_reader :collections

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
