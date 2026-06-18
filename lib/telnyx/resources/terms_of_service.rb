# frozen_string_literal: true

module Telnyx
  module Resources
    # Accept and review the Branded Calling and Phone Number Reputation terms of
    # service.
    class TermsOfService
      # Accept and review the Branded Calling and Phone Number Reputation terms of
      # service.
      # @return [Telnyx::Resources::TermsOfService::NumberReputation]
      attr_reader :number_reputation

      # Accept and review the Branded Calling and Phone Number Reputation terms of
      # service.
      # @return [Telnyx::Resources::TermsOfService::Agreements]
      attr_reader :agreements

      # Accept and review the Branded Calling and Phone Number Reputation terms of
      # service.
      # @return [Telnyx::Resources::TermsOfService::BrandedCalling]
      attr_reader :branded_calling

      # Returns the available Terms of Service agreements (product, current version,
      # terms URL, effective date). Omit `product_type` to return all products; pass it
      # to scope to one.
      #
      # @overload retrieve_info(product_type: nil, request_options: {})
      #
      # @param product_type [Symbol, Telnyx::Models::TermsOfService::TosProductType] Optional product filter. Omit to return info for all products.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TermsOfServiceRetrieveInfoResponse]
      #
      # @see Telnyx::Models::TermsOfServiceRetrieveInfoParams
      def retrieve_info(params = {})
        parsed, options = Telnyx::TermsOfServiceRetrieveInfoParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "terms_of_service/info",
          query: query,
          model: Telnyx::Models::TermsOfServiceRetrieveInfoResponse,
          options: options
        )
      end

      # Returns whether the authenticated user has agreed to the current Terms of
      # Service for the product given by `product_type`. Used during onboarding to
      # decide whether to prompt the user with the ToS dialog before continuing.
      #
      # `agreement_required: true` means the user has not yet agreed (or has agreed to
      # an outdated version) and must agree before using that product's endpoints.
      #
      # @overload retrieve_status(product_type: nil, request_options: {})
      #
      # @param product_type [Symbol, Telnyx::Models::TermsOfService::TosProductType] Which product's ToS to check. Defaults to `branded_calling`.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TermsOfServiceRetrieveStatusResponse]
      #
      # @see Telnyx::Models::TermsOfServiceRetrieveStatusParams
      def retrieve_status(params = {})
        parsed, options = Telnyx::TermsOfServiceRetrieveStatusParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "terms_of_service/status",
          query: query,
          model: Telnyx::Models::TermsOfServiceRetrieveStatusResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @number_reputation = Telnyx::Resources::TermsOfService::NumberReputation.new(client: client)
        @agreements = Telnyx::Resources::TermsOfService::Agreements.new(client: client)
        @branded_calling = Telnyx::Resources::TermsOfService::BrandedCalling.new(client: client)
      end
    end
  end
end
