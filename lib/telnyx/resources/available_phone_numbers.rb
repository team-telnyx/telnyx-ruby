# frozen_string_literal: true

module Telnyx
  module Resources
    # Number search
    class AvailablePhoneNumbers
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::AvailablePhoneNumberListParams} for more details.
      #
      # Searches the Telnyx inventory for available phone numbers. Filters support
      # number patterns, location, number type, features, reservability, and other
      # inventory constraints; the response includes matching numbers and search
      # metadata.
      #
      # @overload list(filter: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::AvailablePhoneNumberListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[phone_numbe
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AvailablePhoneNumberListResponse]
      #
      # @see Telnyx::Models::AvailablePhoneNumberListParams
      def list(params = {})
        parsed, options = Telnyx::AvailablePhoneNumberListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "available_phone_numbers",
          query: query,
          model: Telnyx::Models::AvailablePhoneNumberListResponse,
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
