# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class McpServers
        # Create a new MCP server.
        #
        # @overload create(name:, type:, url:, allowed_tools: nil, api_key_ref: nil, request_options: {})
        #
        # @param name [String]
        # @param type [String]
        # @param url [String]
        # @param allowed_tools [Array<String>, nil]
        # @param api_key_ref [String, nil]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::McpServerCreateResponse]
        #
        # @see Telnyx::Models::AI::McpServerCreateParams
        def create(params)
          parsed, options = Telnyx::AI::McpServerCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "ai/mcp_servers",
            body: parsed,
            model: Telnyx::Models::AI::McpServerCreateResponse,
            options: options
          )
        end

        # Retrieve details for a specific MCP server.
        #
        # @overload retrieve(mcp_server_id, request_options: {})
        #
        # @param mcp_server_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::McpServerRetrieveResponse]
        #
        # @see Telnyx::Models::AI::McpServerRetrieveParams
        def retrieve(mcp_server_id, params = {})
          @client.request(
            method: :get,
            path: ["ai/mcp_servers/%1$s", mcp_server_id],
            model: Telnyx::Models::AI::McpServerRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Update an existing MCP server.
        #
        # @overload update(mcp_server_id, id: nil, allowed_tools: nil, api_key_ref: nil, created_at: nil, name: nil, type: nil, url: nil, request_options: {})
        #
        # @param mcp_server_id [String]
        # @param id [String]
        # @param allowed_tools [Array<String>, nil]
        # @param api_key_ref [String, nil]
        # @param created_at [Time]
        # @param name [String]
        # @param type [String]
        # @param url [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::McpServerUpdateResponse]
        #
        # @see Telnyx::Models::AI::McpServerUpdateParams
        def update(mcp_server_id, params = {})
          parsed, options = Telnyx::AI::McpServerUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["ai/mcp_servers/%1$s", mcp_server_id],
            body: parsed,
            model: Telnyx::Models::AI::McpServerUpdateResponse,
            options: options
          )
        end

        # Retrieve a list of MCP servers.
        #
        # @overload list(page_number: nil, page_size: nil, type: nil, url: nil, request_options: {})
        #
        # @param page_number [Integer]
        # @param page_size [Integer]
        # @param type [String]
        # @param url [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Telnyx::Models::AI::McpServerListResponseItem>]
        #
        # @see Telnyx::Models::AI::McpServerListParams
        def list(params = {})
          parsed, options = Telnyx::AI::McpServerListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "ai/mcp_servers",
            query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            model: Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::McpServerListResponseItem],
            options: options
          )
        end

        # Delete a specific MCP server.
        #
        # @overload delete(mcp_server_id, request_options: {})
        #
        # @param mcp_server_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see Telnyx::Models::AI::McpServerDeleteParams
        def delete(mcp_server_id, params = {})
          @client.request(
            method: :delete,
            path: ["ai/mcp_servers/%1$s", mcp_server_id],
            model: Telnyx::Internal::Type::Unknown,
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
