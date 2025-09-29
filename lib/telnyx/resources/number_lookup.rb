# frozen_string_literal: true

module Telnyx
  module Resources
    class NumberLookup
      # Returns information about the provided phone number.
      #
      # @overload retrieve(phone_number, type: nil, request_options: {})
      #
      # @param phone_number [String] The phone number to be looked up
      #
      # @param type [Symbol, Telnyx::Models::NumberLookupRetrieveParams::Type] Specifies the type of number lookup to be performed
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NumberLookupRetrieveResponse]
      #
      # @see Telnyx::Models::NumberLookupRetrieveParams
      def retrieve(phone_number, params = {})
        parsed, options = Telnyx::NumberLookupRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["number_lookup/%1$s", phone_number],
          query: parsed,
          model: Telnyx::Models::NumberLookupRetrieveResponse,
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
