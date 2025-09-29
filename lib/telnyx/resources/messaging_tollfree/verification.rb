# frozen_string_literal: true

module Telnyx
  module Resources
    class MessagingTollfree
      class Verification
        # @return [Telnyx::Resources::MessagingTollfree::Verification::Requests]
        attr_reader :requests

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @requests = Telnyx::Resources::MessagingTollfree::Verification::Requests.new(client: client)
        end
      end
    end
  end
end
