# frozen_string_literal: true

module Telnyx
  module Resources
    class GlobalIPs
      # Create a Global IP.
      #
      # @overload create(description: nil, name: nil, ports: nil, request_options: {})
      #
      # @param description [String] A user specified description for the address.
      #
      # @param name [String] A user specified name for the address.
      #
      # @param ports [Hash{Symbol=>Object}] A Global IP ports grouped by protocol code.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::GlobalIPCreateResponse]
      #
      # @see Telnyx::Models::GlobalIPCreateParams
      def create(params = {})
        parsed, options = Telnyx::GlobalIPCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "global_ips",
          body: parsed,
          model: Telnyx::Models::GlobalIPCreateResponse,
          options: options
        )
      end

      # Retrieve a Global IP.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::GlobalIPRetrieveResponse]
      #
      # @see Telnyx::Models::GlobalIPRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["global_ips/%1$s", id],
          model: Telnyx::Models::GlobalIPRetrieveResponse,
          options: params[:request_options]
        )
      end

      # List all Global IPs.
      #
      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer]
      # @param page_size [Integer]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::GlobalIPListResponse>]
      #
      # @see Telnyx::Models::GlobalIPListParams
      def list(params = {})
        parsed, options = Telnyx::GlobalIPListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "global_ips",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::GlobalIPListResponse,
          options: options
        )
      end

      # Delete a Global IP.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::GlobalIPDeleteResponse]
      #
      # @see Telnyx::Models::GlobalIPDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["global_ips/%1$s", id],
          model: Telnyx::Models::GlobalIPDeleteResponse,
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
