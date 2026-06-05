# typed: strong

module Telnyx
  module Resources
    # Accept and review the Branded Calling and Phone Number Reputation terms of
    # service.
    class TermsOfService
      # Accept and review the Branded Calling and Phone Number Reputation terms of
      # service.
      sig { returns(Telnyx::Resources::TermsOfService::NumberReputation) }
      attr_reader :number_reputation

      # Accept and review the Branded Calling and Phone Number Reputation terms of
      # service.
      sig { returns(Telnyx::Resources::TermsOfService::Agreements) }
      attr_reader :agreements

      # Accept and review the Branded Calling and Phone Number Reputation terms of
      # service.
      sig { returns(Telnyx::Resources::TermsOfService::BrandedCalling) }
      attr_reader :branded_calling

      # Returns whether the authenticated user has agreed to the current Number
      # Reputation Terms of Service. Used during onboarding to decide whether to prompt
      # the user with the ToS dialog before continuing.
      #
      # The `agreement_required: true` value means the user has not yet agreed (or has
      # agreed to an outdated version) and must call
      # `POST /terms_of_service/number_reputation/agree` before they can use the Number
      # Reputation endpoints on an enterprise.
      sig do
        params(
          product_type:
            Telnyx::TermsOfServiceStatusParams::ProductType::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TermsOfServiceStatusResponse)
      end
      def status(
        # Which product's ToS to check. Defaults to `branded_calling`; pass
        # `number_reputation` to check the Number Reputation Terms of Service.
        product_type: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
