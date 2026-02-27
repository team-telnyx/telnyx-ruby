# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class FineTuning
        # Customize LLMs for your unique needs
        # @return [Telnyx::Resources::AI::FineTuning::Jobs]
        attr_reader :jobs

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @jobs = Telnyx::Resources::AI::FineTuning::Jobs.new(client: client)
        end
      end
    end
  end
end
