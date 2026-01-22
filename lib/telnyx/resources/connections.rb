# frozen_string_literal: true

module Telnyx
  module Resources
    class Connections
      # Retrieves the high-level details of an existing connection. To retrieve specific
      # authentication information, use the endpoint for the specific connection type.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] IP Connection ID
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ConnectionRetrieveResponse]
      #
      # @see Telnyx::Models::ConnectionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["connections/%1$s", id],
          model: Telnyx::Models::ConnectionRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::ConnectionListParams} for more details.
      #
      # Returns a list of your connections irrespective of type.
      #
      # @overload list(filter: nil, page: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::ConnectionListParams::Filter] Consolidated filter parameter (deepObject style). Originally:
      # filter[connection\_
      #
      # @param page [Telnyx::Models::ConnectionListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param sort [Symbol, Telnyx::Models::ConnectionListParams::Sort] Specifies the sort order for results. By default sorting direction is ascending.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::ConnectionListResponse>]
      #
      # @see Telnyx::Models::ConnectionListParams
      def list(params = {})
        parsed, options = Telnyx::ConnectionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "connections",
          query: parsed,
          page: Telnyx::Internal::DefaultPagination,
          model: Telnyx::Models::ConnectionListResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::ConnectionListActiveCallsParams} for more details.
      #
      # Lists all active calls for given connection. Acceptable connections are either
      # SIP connections with webhook_url or xml_request_url, call control or texml.
      # Returned results are cursor paginated.
      #
      # @overload list_active_calls(connection_id, page: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param connection_id [String] Telnyx connection id
      #
      # @param page [Telnyx::Models::ConnectionListActiveCallsParams::Page] Consolidated page parameter (deepObject style). Originally: page[after], page[be
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::ConnectionListActiveCallsResponse>]
      #
      # @see Telnyx::Models::ConnectionListActiveCallsParams
      def list_active_calls(connection_id, params = {})
        parsed, options = Telnyx::ConnectionListActiveCallsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["connections/%1$s/active_calls", connection_id],
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::ConnectionListActiveCallsResponse,
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
