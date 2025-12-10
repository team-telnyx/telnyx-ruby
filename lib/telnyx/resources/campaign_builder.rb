# frozen_string_literal: true

module Telnyx
  module Resources
    class CampaignBuilder
      # @return [Telnyx::Resources::CampaignBuilder::Brand]
      attr_reader :brand

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @brand = Telnyx::Resources::CampaignBuilder::Brand.new(client: client)
      end
    end
  end
end
