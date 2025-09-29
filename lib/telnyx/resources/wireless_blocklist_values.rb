# frozen_string_literal: true

module Telnyx
  module Resources
    class WirelessBlocklistValues
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::WirelessBlocklistValueListParams} for more details.
      #
      # Retrieve all wireless blocklist values for a given blocklist type.
      #
      # @overload list(type:, request_options: {})
      #
      # @param type [Symbol, Telnyx::Models::WirelessBlocklistValueListParams::Type] The Wireless Blocklist type for which to list possible values (e.g., `country`,
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::WirelessBlocklistValueListResponse]
      #
      # @see Telnyx::Models::WirelessBlocklistValueListParams
      def list(params)
        parsed, options = Telnyx::WirelessBlocklistValueListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "wireless_blocklist_values",
          query: parsed,
          model: Telnyx::Models::WirelessBlocklistValueListResponse,
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
