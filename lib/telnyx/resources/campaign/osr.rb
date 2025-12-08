# frozen_string_literal: true

module Telnyx
  module Resources
    class Campaign
      class Osr
        # Get My Osr Campaign Attributes
        #
        # @overload get_attributes(campaign_id, request_options: {})
        #
        # @param campaign_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Hash{Symbol=>Object}]
        #
        # @see Telnyx::Models::Campaign::OsrGetAttributesParams
        def get_attributes(campaign_id, params = {})
          @client.request(
            method: :get,
            path: ["10dlc/campaign/%1$s/osr/attributes", campaign_id],
            model: Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
            options: params[:request_options]
          )
        end

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
