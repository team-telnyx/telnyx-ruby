# frozen_string_literal: true

module Telnyx
  module Resources
    class TermsOfService
      # Accept and review the Branded Calling and Phone Number Reputation terms of
      # service.
      class BrandedCalling
        # Records the authenticated user's agreement to the current Branded Calling ToS.
        # No body required. Idempotent - re-calling after agreement is a no-op and returns
        # the existing agreement.
        #
        # This is a prerequisite for activating Branded Calling on any enterprise
        # (`POST /enterprises/{id}/branded_calling`); without an agreement, activation
        # returns `403`.
        #
        # @overload agree(request_options: {})
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::TermsOfService::TosAgreementWrapped]
        #
        # @see Telnyx::Models::TermsOfService::BrandedCallingAgreeParams
        def agree(params = {})
          @client.request(
            method: :post,
            path: "terms_of_service/branded_calling/agree",
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
