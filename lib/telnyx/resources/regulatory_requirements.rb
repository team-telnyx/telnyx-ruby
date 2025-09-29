# frozen_string_literal: true

module Telnyx
  module Resources
    class RegulatoryRequirements
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::RegulatoryRequirementRetrieveParams} for more details.
      #
      # Retrieve regulatory requirements
      #
      # @overload retrieve(filter: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::RegulatoryRequirementRetrieveParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[phone_numbe
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::RegulatoryRequirementRetrieveResponse]
      #
      # @see Telnyx::Models::RegulatoryRequirementRetrieveParams
      def retrieve(params = {})
        parsed, options = Telnyx::RegulatoryRequirementRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "regulatory_requirements",
          query: parsed,
          model: Telnyx::Models::RegulatoryRequirementRetrieveResponse,
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
