# typed: strong

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
        sig do
          params(request_options: Telnyx::RequestOptions::OrHash).returns(
            Telnyx::TermsOfService::TosAgreementWrapped
          )
        end
        def agree(request_options: {})
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
