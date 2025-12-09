# frozen_string_literal: true

module Telnyx
  module Resources
    class CampaignBuilder
      class Brand
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
