# frozen_string_literal: true

module Telnyx
  module Resources
    class PhoneNumbersRegulatoryRequirements
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveParams} for more
      # details.
      #
      # Retrieve regulatory requirements for a list of phone numbers
      #
      # @overload retrieve(filter: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[phone_numbe
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse]
      #
      # @see Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveParams
      def retrieve(params = {})
        parsed, options = Telnyx::PhoneNumbersRegulatoryRequirementRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "phone_numbers_regulatory_requirements",
          query: parsed,
          model: Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse,
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
