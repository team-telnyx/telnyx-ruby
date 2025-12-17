# frozen_string_literal: true

module Telnyx
  module Resources
    class Messaging10dlc
      class Campaign
        class Osr
          # Get OSR campaign attributes
          #
          # @overload get_attributes(campaign_id, request_options: {})
          #
          # @param campaign_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Hash{Symbol=>Object}]
          #
          # @see Telnyx::Models::Messaging10dlc::Campaign::OsrGetAttributesParams
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
end
