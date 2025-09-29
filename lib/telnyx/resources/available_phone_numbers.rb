# frozen_string_literal: true

module Telnyx
  module Resources
    class AvailablePhoneNumbers
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::AvailablePhoneNumberListParams} for more details.
      #
      # List available phone numbers
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
        @client.request(
          method: :get,
          path: "available_phone_numbers",
          query: parsed,
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
