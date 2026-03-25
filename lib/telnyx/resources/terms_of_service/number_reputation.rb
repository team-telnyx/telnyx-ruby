# frozen_string_literal: true

module Telnyx
  module Resources
    class TermsOfService
      # Terms of Service agreement endpoints
      class NumberReputation
        # Accept the Terms of Service for the Number Reputation product. Must be called
        # before using Number Reputation endpoints.
        #
        # Returns `400` with error code `10015` if the user has already agreed to the
        # current ToS version.
        #
        # @overload agree(request_options: {})
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::TermsOfService::NumberReputationAgreeParams
        def agree(params = {})
          @client.request(
            method: :post,
            path: "terms_of_service/number_reputation/agree",
            model: NilClass,
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
