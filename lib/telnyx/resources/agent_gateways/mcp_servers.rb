# frozen_string_literal: true

module Telnyx
  module Resources
    class AgentGateways
      # MCP servers on an instance, served to agents at one MCP endpoint.
      class McpServers
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AgentGateways::McpServerCreateParams} for more details.
        #
        # Adds an MCP server. The instance serves its tools at `{gateway_url}/mcp`, each
        # named with the server's `name` and a hyphen, to the keys granted the server and,
        # with `open_to_every_key`, to every key. The instance must be `ready`; otherwise
        # the request answers `409`.
        #
        # @overload create(instance_id, name:, url:, auth: nil, forwarded_headers: nil, open_to_every_key: nil, static_headers: nil, tools: nil, transport: nil, request_options: {})
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param name [String] A name for the server, unique on the instance across MCP servers and APIs, regar
        #
        # @param url [String] The server's MCP endpoint, `http` or `https`.
        #
        # @param auth [Telnyx::Models::AgentGateways::AgentGatewayNoAuth, Telnyx::Models::AgentGateways::AgentGatewayStaticAuth, Telnyx::Models::AgentGateways::AgentGatewayOAuthClientCredentials, Telnyx::Models::AgentGateways::AgentGatewayPassthroughAuth, Telnyx::Models::AgentGateways::AgentGatewayAwsSigV4Auth] How the gateway authenticates to the server. Replaced whole on an update; `{"typ
        #
        # @param forwarded_headers [Array<String>] Headers copied from the agent's request, by name.
        #
        # @param open_to_every_key [Boolean] `true` lets every key on the instance use the server, granted or not.
        #
        # @param static_headers [Hash{Symbol=>String}] Headers sent on every request.
        #
        # @param tools [Array<String>] The tools the server exposes to every key, by name. `[]` exposes every tool.
        #
        # @param transport [Symbol, Telnyx::Models::AgentGateways::McpServerCreateParams::Transport] `http` for Streamable HTTP, or `sse` for Server-Sent Events.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::AgentGatewayMcpServerResponse]
        #
        # @see Telnyx::Models::AgentGateways::McpServerCreateParams
        def create(instance_id, params)
          parsed, options = Telnyx::AgentGateways::McpServerCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["agent_gateways/%1$s/mcp_servers", instance_id],
            body: parsed,
            model: Telnyx::AgentGateways::AgentGatewayMcpServerResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AgentGateways::McpServerUpdateParams} for more details.
        #
        # Changes an MCP server's settings. A field left out stays as it is. `auth` is
        # replaced whole, `tools: []` exposes every tool, and `static_headers: {}` clears
        # the headers. The instance must be `ready`; otherwise the request answers `409`.
        #
        # @overload update(server_id, instance_id:, auth: nil, forwarded_headers: nil, name: nil, open_to_every_key: nil, static_headers: nil, tools: nil, transport: nil, url: nil, request_options: {})
        #
        # @param server_id [String] Path param: The MCP server's `id`.
        #
        # @param instance_id [String] Path param: The Agent Gateway's `id`.
        #
        # @param auth [Telnyx::Models::AgentGateways::AgentGatewayNoAuth, Telnyx::Models::AgentGateways::AgentGatewayStaticAuth, Telnyx::Models::AgentGateways::AgentGatewayOAuthClientCredentials, Telnyx::Models::AgentGateways::AgentGatewayPassthroughAuth, Telnyx::Models::AgentGateways::AgentGatewayAwsSigV4Auth] Body param: How the gateway authenticates to the server. Replaced whole on an up
        #
        # @param forwarded_headers [Array<String>] Body param: Headers copied from the agent's request, by name.
        #
        # @param name [String] Body param: A name for the server, unique on the instance across MCP servers and
        #
        # @param open_to_every_key [Boolean] Body param: `true` lets every key on the instance use the server, granted or not
        #
        # @param static_headers [Hash{Symbol=>String}] Body param: Headers sent on every request.
        #
        # @param tools [Array<String>] Body param: The tools the server exposes to every key, by name. `[]` exposes eve
        #
        # @param transport [Symbol, Telnyx::Models::AgentGateways::McpServerUpdateParams::Transport] Body param: `http` for Streamable HTTP, or `sse` for Server-Sent Events.
        #
        # @param url [String] Body param: The server's MCP endpoint, `http` or `https`.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::AgentGatewayMcpServerResponse]
        #
        # @see Telnyx::Models::AgentGateways::McpServerUpdateParams
        def update(server_id, params)
          parsed, options = Telnyx::AgentGateways::McpServerUpdateParams.dump_request(params)
          instance_id =
            parsed.delete(:instance_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["agent_gateways/%1$s/mcp_servers/%2$s", instance_id, server_id],
            body: parsed,
            model: Telnyx::AgentGateways::AgentGatewayMcpServerResponse,
            options: options
          )
        end

        # Lists the MCP servers the instance serves at `{gateway_url}/mcp`, without their
        # credentials. The instance must be `ready`; otherwise the request answers `409`.
        #
        # @overload list(instance_id, request_options: {})
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::McpServerListResponse]
        #
        # @see Telnyx::Models::AgentGateways::McpServerListParams
        def list(instance_id, params = {})
          @client.request(
            method: :get,
            path: ["agent_gateways/%1$s/mcp_servers", instance_id],
            model: Telnyx::Models::AgentGateways::McpServerListResponse,
            options: params[:request_options]
          )
        end

        # Removes an MCP server and returns it as it was. Its `id` stays in the tool
        # permissions that name it until they are next set. The instance must be `ready`;
        # otherwise the request answers `409`.
        #
        # @overload delete(server_id, instance_id:, request_options: {})
        #
        # @param server_id [String] The MCP server's `id`.
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::AgentGatewayMcpServerResponse]
        #
        # @see Telnyx::Models::AgentGateways::McpServerDeleteParams
        def delete(server_id, params)
          parsed, options = Telnyx::AgentGateways::McpServerDeleteParams.dump_request(params)
          instance_id =
            parsed.delete(:instance_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["agent_gateways/%1$s/mcp_servers/%2$s", instance_id, server_id],
            model: Telnyx::AgentGateways::AgentGatewayMcpServerResponse,
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
end
