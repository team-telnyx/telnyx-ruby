# frozen_string_literal: true

module Telnyx
  module Resources
    class PrivateWirelessGateways
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::PrivateWirelessGatewayCreateParams} for more details.
      #
      # Asynchronously create a Private Wireless Gateway for SIM cards for a previously
      # created network. This operation may take several minutes so you can check the
      # Private Wireless Gateway status at the section Get a Private Wireless Gateway.
      #
      # @overload create(name:, network_id:, region_code: nil, request_options: {})
      #
      # @param name [String] The private wireless gateway name.
      #
      # @param network_id [String] The identification of the related network resource.
      #
      # @param region_code [String] The code of the region where the private wireless gateway will be assigned. A li
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PrivateWirelessGatewayCreateResponse]
      #
      # @see Telnyx::Models::PrivateWirelessGatewayCreateParams
      def create(params)
        parsed, options = Telnyx::PrivateWirelessGatewayCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "private_wireless_gateways",
          body: parsed,
          model: Telnyx::Models::PrivateWirelessGatewayCreateResponse,
          options: options
        )
      end

      # Retrieve information about a Private Wireless Gateway.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the private wireless gateway.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PrivateWirelessGatewayRetrieveResponse]
      #
      # @see Telnyx::Models::PrivateWirelessGatewayRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["private_wireless_gateways/%1$s", id],
          model: Telnyx::Models::PrivateWirelessGatewayRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Get all Private Wireless Gateways belonging to the user.
      #
      # @overload list(filter_created_at: nil, filter_ip_range: nil, filter_name: nil, filter_region_code: nil, filter_updated_at: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter_created_at [String] Private Wireless Gateway resource creation date.
      #
      # @param filter_ip_range [String] The IP address range of the Private Wireless Gateway.
      #
      # @param filter_name [String] The name of the Private Wireless Gateway.
      #
      # @param filter_region_code [String] The name of the region where the Private Wireless Gateway is deployed.
      #
      # @param filter_updated_at [String] When the Private Wireless Gateway was last updated.
      #
      # @param page_number [Integer] The page number to load.
      #
      # @param page_size [Integer] The size of the page.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PrivateWirelessGatewayListResponse]
      #
      # @see Telnyx::Models::PrivateWirelessGatewayListParams
      def list(params = {})
        parsed, options = Telnyx::PrivateWirelessGatewayListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "private_wireless_gateways",
          query: parsed.transform_keys(
            filter_created_at: "filter[created_at]",
            filter_ip_range: "filter[ip_range]",
            filter_name: "filter[name]",
            filter_region_code: "filter[region_code]",
            filter_updated_at: "filter[updated_at]",
            page_number: "page[number]",
            page_size: "page[size]"
          ),
          model: Telnyx::Models::PrivateWirelessGatewayListResponse,
          options: options
        )
      end

      # Deletes the Private Wireless Gateway.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the private wireless gateway.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PrivateWirelessGatewayDeleteResponse]
      #
      # @see Telnyx::Models::PrivateWirelessGatewayDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["private_wireless_gateways/%1$s", id],
          model: Telnyx::Models::PrivateWirelessGatewayDeleteResponse,
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
