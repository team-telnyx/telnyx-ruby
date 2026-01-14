# frozen_string_literal: true

module Telnyx
  module Resources
    class IPs
      # Create a new IP object.
      #
      # @overload create(ip_address:, connection_id: nil, port: nil, request_options: {})
      #
      # @param ip_address [String] IP adddress represented by this resource.
      #
      # @param connection_id [String] ID of the IP Connection to which this IP should be attached.
      #
      # @param port [Integer] Port to use when connecting to this IP.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::IPCreateResponse]
      #
      # @see Telnyx::Models::IPCreateParams
      def create(params)
        parsed, options = Telnyx::IPCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "ips",
          body: parsed,
          model: Telnyx::Models::IPCreateResponse,
          options: options
        )
      end

      # Return the details regarding a specific IP.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the type of resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::IPRetrieveResponse]
      #
      # @see Telnyx::Models::IPRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["ips/%1$s", id],
          model: Telnyx::Models::IPRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update the details of a specific IP.
      #
      # @overload update(id, ip_address:, connection_id: nil, port: nil, request_options: {})
      #
      # @param id [String] Identifies the type of resource.
      #
      # @param ip_address [String] IP adddress represented by this resource.
      #
      # @param connection_id [String] ID of the IP Connection to which this IP should be attached.
      #
      # @param port [Integer] Port to use when connecting to this IP.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::IPUpdateResponse]
      #
      # @see Telnyx::Models::IPUpdateParams
      def update(id, params)
        parsed, options = Telnyx::IPUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["ips/%1$s", id],
          body: parsed,
          model: Telnyx::Models::IPUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::IPListParams} for more details.
      #
      # Get all IPs belonging to the user that match the given filters.
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::IPListParams::Filter] Consolidated filter parameter (deepObject style). Originally:
      # filter[connection\_
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::IP>]
      #
      # @see Telnyx::Models::IPListParams
      def list(params = {})
        parsed, options = Telnyx::IPListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "ips",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::IP,
          options: options
        )
      end

      # Delete an IP.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the type of resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::IPDeleteResponse]
      #
      # @see Telnyx::Models::IPDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["ips/%1$s", id],
          model: Telnyx::Models::IPDeleteResponse,
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
