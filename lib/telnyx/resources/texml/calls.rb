# frozen_string_literal: true

module Telnyx
  module Resources
    class Texml
      class Calls
        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
