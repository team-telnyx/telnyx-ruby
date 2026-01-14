# frozen_string_literal: true

module Telnyx
  module Resources
    class PortingPhoneNumbers
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::PortingPhoneNumberListParams} for more details.
      #
      # Returns a list of your porting phone numbers.
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::PortingPhoneNumberListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[porting_ord
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::PortingPhoneNumberListResponse>]
      #
      # @see Telnyx::Models::PortingPhoneNumberListParams
      def list(params = {})
        parsed, options = Telnyx::PortingPhoneNumberListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "porting_phone_numbers",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
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
