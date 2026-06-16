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

      # Returns the available Terms of Service agreements (product, current version,
      # terms URL, effective date). Omit `product_type` to return all products; pass it
      # to scope to one.
      sig do
        params(
          product_type: Telnyx::TermsOfServiceInfoParams::ProductType::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TermsOfServiceInfoResponse)
      end
      def info(
        # Optional product filter. Omit to return info for all products.
        product_type: nil,
        request_options: {}
      )
      end

      # Returns whether the authenticated user has agreed to the current Terms of
      # Service for the product given by `product_type`. Used during onboarding to
      # decide whether to prompt the user with the ToS dialog before continuing.
      #
      # `agreement_required: true` means the user has not yet agreed (or has agreed to
      # an outdated version) and must agree before using that product's endpoints.
      sig do
        params(
          product_type:
            Telnyx::TermsOfServiceStatusParams::ProductType::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TermsOfServiceStatusResponse)
      end
      def status(
        # Which product's ToS to check. Defaults to `branded_calling`.
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
