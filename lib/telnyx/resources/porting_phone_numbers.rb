# frozen_string_literal: true

module Telnyx
  module Resources
    class PortingPhoneNumbers
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::PortingPhoneNumberListParams} for more details.
      #
      # Returns a list of your porting phone numbers.
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::PortingPhoneNumberListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[porting_ord
      #
      # @param page [Telnyx::Models::PortingPhoneNumberListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PortingPhoneNumberListResponse]
      #
      # @see Telnyx::Models::PortingPhoneNumberListParams
      def list(params = {})
        parsed, options = Telnyx::PortingPhoneNumberListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "porting_phone_numbers",
          query: parsed,
          model: Telnyx::Models::PortingPhoneNumberListResponse,
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
