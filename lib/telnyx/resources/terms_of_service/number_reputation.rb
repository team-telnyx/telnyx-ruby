# frozen_string_literal: true

module Telnyx
  module Resources
    class TermsOfService
      # Accept and review the Branded Calling and Phone Number Reputation terms of
      # service.
      class NumberReputation
        # Records the authenticated user's agreement to the current Phone Number
        # Reputation ToS. No body required. Idempotent.
        #
        # Prerequisite for using any of the `/v2/.../reputation/*` endpoints.
        #
        # @overload agree(request_options: {})
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::TermsOfService::TosAgreementWrapped]
        #
        # @see Telnyx::Models::TermsOfService::NumberReputationAgreeParams
        def agree(params = {})
          @client.request(
            method: :post,
            path: "terms_of_service/number_reputation/agree",
            model: Telnyx::TermsOfService::TosAgreementWrapped,
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
