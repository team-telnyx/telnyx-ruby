# frozen_string_literal: true

module Telnyx
  module Resources
    class WirelessBlocklists
      # Create a Wireless Blocklist to prevent SIMs from connecting to certain networks.
      #
      # @overload create(name:, type:, values:, request_options: {})
      #
      # @param name [String] The name of the Wireless Blocklist.
      #
      # @param type [Symbol, Telnyx::Models::WirelessBlocklistCreateParams::Type] The type of wireless blocklist.
      #
      # @param values [Array<String>] Values to block. The values here depend on the `type` of Wireless Blocklist.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::WirelessBlocklistCreateResponse]
      #
      # @see Telnyx::Models::WirelessBlocklistCreateParams
      def create(params)
        parsed, options = Telnyx::WirelessBlocklistCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "wireless_blocklists",
          body: parsed,
          model: Telnyx::Models::WirelessBlocklistCreateResponse,
          options: options
        )
      end

      # Retrieve information about a Wireless Blocklist.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the wireless blocklist.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::WirelessBlocklistRetrieveResponse]
      #
      # @see Telnyx::Models::WirelessBlocklistRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["wireless_blocklists/%1$s", id],
          model: Telnyx::Models::WirelessBlocklistRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update a Wireless Blocklist.
      #
      # @overload update(name: nil, type: nil, values: nil, request_options: {})
      #
      # @param name [String] The name of the Wireless Blocklist.
      #
      # @param type [Symbol, Telnyx::Models::WirelessBlocklistUpdateParams::Type] The type of wireless blocklist.
      #
      # @param values [Array<String>] Values to block. The values here depend on the `type` of Wireless Blocklist.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::WirelessBlocklistUpdateResponse]
      #
      # @see Telnyx::Models::WirelessBlocklistUpdateParams
      def update(params = {})
        parsed, options = Telnyx::WirelessBlocklistUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "wireless_blocklists",
          body: parsed,
          model: Telnyx::Models::WirelessBlocklistUpdateResponse,
          options: options
        )
      end

      # Get all Wireless Blocklists belonging to the user.
      #
      # @overload list(filter_name: nil, filter_type: nil, filter_values: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter_name [String] The name of the Wireless Blocklist.
      #
      # @param filter_type [String] When the Private Wireless Gateway was last updated.
      #
      # @param filter_values [String] Values to filter on (inclusive).
      #
      # @param page_number [Integer] The page number to load.
      #
      # @param page_size [Integer] The size of the page.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::WirelessBlocklist>]
      #
      # @see Telnyx::Models::WirelessBlocklistListParams
      def list(params = {})
        parsed, options = Telnyx::WirelessBlocklistListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "wireless_blocklists",
          query: parsed.transform_keys(
            filter_name: "filter[name]",
            filter_type: "filter[type]",
            filter_values: "filter[values]",
            page_number: "page[number]",
            page_size: "page[size]"
          ),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::WirelessBlocklist,
          options: options
        )
      end

      # Deletes the Wireless Blocklist.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the wireless blocklist.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::WirelessBlocklistDeleteResponse]
      #
      # @see Telnyx::Models::WirelessBlocklistDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["wireless_blocklists/%1$s", id],
          model: Telnyx::Models::WirelessBlocklistDeleteResponse,
          options: params[:request_options]
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
