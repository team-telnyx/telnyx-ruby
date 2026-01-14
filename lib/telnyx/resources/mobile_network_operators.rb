# frozen_string_literal: true

module Telnyx
  module Resources
    class MobileNetworkOperators
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MobileNetworkOperatorListParams} for more details.
      #
      # Telnyx has a set of GSM mobile operators partners that are available through our
      # mobile network roaming. This resource is entirely managed by Telnyx and may
      # change over time. That means that this resource won't allow any write operations
      # for it. Still, it's available so it can be used as a support resource that can
      # be related to other resources or become a configuration option.
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::MobileNetworkOperatorListParams::Filter] Consolidated filter parameter for mobile network operators (deepObject style). O
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::MobileNetworkOperatorListResponse>]
      #
      # @see Telnyx::Models::MobileNetworkOperatorListParams
      def list(params = {})
        parsed, options = Telnyx::MobileNetworkOperatorListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "mobile_network_operators",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::MobileNetworkOperatorListResponse,
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
