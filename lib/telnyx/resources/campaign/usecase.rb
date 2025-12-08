# frozen_string_literal: true

module Telnyx
  module Resources
    class Campaign
      class Usecase
        # Get Campaign Cost
        #
        # @overload get_cost(usecase:, request_options: {})
        #
        # @param usecase [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Campaign::UsecaseGetCostResponse]
        #
        # @see Telnyx::Models::Campaign::UsecaseGetCostParams
        def get_cost(params)
          parsed, options = Telnyx::Campaign::UsecaseGetCostParams.dump_request(params)
          @client.request(
            method: :get,
            path: "10dlc/campaign/usecase/cost",
            query: parsed,
            model: Telnyx::Models::Campaign::UsecaseGetCostResponse,
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
