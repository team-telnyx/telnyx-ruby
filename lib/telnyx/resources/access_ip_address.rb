# frozen_string_literal: true

module Telnyx
  module Resources
    class AccessIPAddress
      # Create new Access IP Address
      #
      # @overload create(ip_address:, description: nil, request_options: {})
      #
      # @param ip_address [String]
      # @param description [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AccessIPAddressResponse]
      #
      # @see Telnyx::Models::AccessIPAddressCreateParams
      def create(params)
        parsed, options = Telnyx::AccessIPAddressCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "access_ip_address",
          body: parsed,
          model: Telnyx::AccessIPAddressResponse,
          options: options
        )
      end

      # Retrieve an access IP address
      #
      # @overload retrieve(access_ip_address_id, request_options: {})
      #
      # @param access_ip_address_id [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AccessIPAddressResponse]
      #
      # @see Telnyx::Models::AccessIPAddressRetrieveParams
      def retrieve(access_ip_address_id, params = {})
        @client.request(
          method: :get,
          path: ["access_ip_address/%1$s", access_ip_address_id],
          model: Telnyx::AccessIPAddressResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::AccessIPAddressListParams} for more details.
      #
      # List all Access IP Addresses
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::AccessIPAddressListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[ip_source],
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AccessIPAddressResponse>]
      #
      # @see Telnyx::Models::AccessIPAddressListParams
      def list(params = {})
        parsed, options = Telnyx::AccessIPAddressListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "access_ip_address",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::AccessIPAddressResponse,
          options: options
        )
      end

      # Delete access IP address
      #
      # @overload delete(access_ip_address_id, request_options: {})
      #
      # @param access_ip_address_id [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AccessIPAddressResponse]
      #
      # @see Telnyx::Models::AccessIPAddressDeleteParams
      def delete(access_ip_address_id, params = {})
        @client.request(
          method: :delete,
          path: ["access_ip_address/%1$s", access_ip_address_id],
          model: Telnyx::AccessIPAddressResponse,
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
