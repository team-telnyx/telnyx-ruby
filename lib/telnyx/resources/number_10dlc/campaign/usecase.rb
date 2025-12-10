# frozen_string_literal: true

module Telnyx
  module Resources
    class Number10dlc
      class Campaign
        class Usecase
          # Get Campaign Cost
          #
          # @overload retrieve_cost(usecase:, request_options: {})
          #
          # @param usecase [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Number10dlc::Campaign::UsecaseRetrieveCostResponse]
          #
          # @see Telnyx::Models::Number10dlc::Campaign::UsecaseRetrieveCostParams
          def retrieve_cost(params)
            parsed, options = Telnyx::Number10dlc::Campaign::UsecaseRetrieveCostParams.dump_request(params)
            @client.request(
              method: :get,
              path: "10dlc/campaign/usecase/cost",
              query: parsed,
              model: Telnyx::Models::Number10dlc::Campaign::UsecaseRetrieveCostResponse,
              options: options
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
