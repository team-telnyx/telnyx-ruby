# frozen_string_literal: true

module Telnyx
  module Resources
    class Messages
      class Whatsapp
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
