# frozen_string_literal: true

module Telnyx
  module Resources
    class AvailablePhoneNumberBlocks
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::AvailablePhoneNumberBlockListParams} for more details.
      #
      # List available phone number blocks
      #
      # @overload list(filter: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::AvailablePhoneNumberBlockListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[locality],
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AvailablePhoneNumberBlockListResponse]
      #
      # @see Telnyx::Models::AvailablePhoneNumberBlockListParams
      def list(params = {})
        parsed, options = Telnyx::AvailablePhoneNumberBlockListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "available_phone_number_blocks",
          query: parsed,
          model: Telnyx::Models::AvailablePhoneNumberBlockListResponse,
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
