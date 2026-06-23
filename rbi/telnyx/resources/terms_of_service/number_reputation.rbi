# typed: strong

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
