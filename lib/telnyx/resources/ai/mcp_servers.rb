# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class McpServers
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AI::McpServerCreateParams} for more details.
        #
        # Creates a new MCP server configuration on your account and returns the created
        # server.
        #
        # @overload create(name:, type:, url:, allowed_tools: nil, api_key_ref: nil, idempotency_key: nil, request_options: {})
        #
        # @param name [String] Body param
        #
        # @param type [String] Body param
        #
        # @param url [String] Body param
        #
        # @param allowed_tools [Array<String>, nil] Body param
        #
        # @param api_key_ref [String, nil] Body param
        #
        # @param idempotency_key [String] Header param: Optional opaque, unquoted key for safely retrying the same logical
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::McpServer]
        #
        # @see Telnyx::Models::AI::McpServerCreateParams
        def create(params)
          parsed, options = Telnyx::AI::McpServerCreateParams.dump_request(params)
          header_params = {idempotency_key: "idempotency-key"}
          @client.request(
            method: :post,
            path: "ai/mcp_servers",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Telnyx::AI::McpServer,
            options: options
          )
        end

        # Retrieve details for a specific MCP server.
        #
        # @overload retrieve(mcp_server_id, request_options: {})
        #
        # @param mcp_server_id [String] Unique identifier of the mcp server.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::McpServer]
        #
        # @see Telnyx::Models::AI::McpServerRetrieveParams
        def retrieve(mcp_server_id, params = {})
          @client.request(
            method: :get,
            path: ["ai/mcp_servers/%1$s", mcp_server_id],
            model: Telnyx::AI::McpServer,
            options: params[:request_options]
          )
        end

        # Updates the specified MCP server's configuration and returns the updated server.
        #
        # @overload update(mcp_server_id, id: nil, allowed_tools: nil, api_key_ref: nil, created_at: nil, name: nil, type: nil, url: nil, request_options: {})
        #
        # @param mcp_server_id [String] Unique identifier of the mcp server.
        #
        # @param id [String]
        #
        # @param allowed_tools [Array<String>, nil]
        #
        # @param api_key_ref [String, nil]
        #
        # @param created_at [Time]
        #
        # @param name [String]
        #
        # @param type [String]
        #
        # @param url [String]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::McpServer]
        #
        # @see Telnyx::Models::AI::McpServerUpdateParams
        def update(mcp_server_id, params = {})
          parsed, options = Telnyx::AI::McpServerUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["ai/mcp_servers/%1$s", mcp_server_id],
            body: parsed,
            model: Telnyx::AI::McpServer,
            options: options
          )
        end

        # Returns a paginated list of the MCP servers configured on your account, with
        # optional filtering by type or URL.
        #
        # @overload list(page_number: nil, page_size: nil, type: nil, url: nil, request_options: {})
        #
        # @param page_number [Integer] Page number to retrieve (1-based).
        #
        # @param page_size [Integer] Number of items to return per page.
        #
        # @param type [String] Filter results by type.
        #
        # @param url [String] Filter results by url.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPaginationTopLevelArray<Telnyx::Models::AI::McpServer>]
        #
        # @see Telnyx::Models::AI::McpServerListParams
        def list(params = {})
          parsed, options = Telnyx::AI::McpServerListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "ai/mcp_servers",
            query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPaginationTopLevelArray,
            model: Telnyx::AI::McpServer,
            options: options
          )
        end

        # Permanently deletes the specified MCP server configuration from your account.
        #
        # @overload delete(mcp_server_id, request_options: {})
        #
        # @param mcp_server_id [String] Unique identifier of the mcp server.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::AI::McpServerDeleteParams
        def delete(mcp_server_id, params = {})
          @client.request(
            method: :delete,
            path: ["ai/mcp_servers/%1$s", mcp_server_id],
            model: NilClass,
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
end
