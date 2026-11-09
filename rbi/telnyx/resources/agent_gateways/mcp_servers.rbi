# typed: strong

module Telnyx
  module Resources
    class AgentGateways
      # MCP servers on an instance, served to agents at one MCP endpoint.
      class McpServers
        # Adds an MCP server. The instance serves its tools at `{gateway_url}/mcp`, each
        # named with the server's `name` and a hyphen, to the keys granted the server and,
        # with `open_to_every_key`, to every key. The instance must be `ready`; otherwise
        # the request answers `409`.
        sig do
          params(
            instance_id: String,
            name: String,
            url: String,
            auth:
              T.any(
                Telnyx::AgentGateways::AgentGatewayNoAuth::OrHash,
                Telnyx::AgentGateways::AgentGatewayStaticAuth::OrHash,
                Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials::OrHash,
                Telnyx::AgentGateways::AgentGatewayPassthroughAuth::OrHash,
                Telnyx::AgentGateways::AgentGatewayAwsSigV4Auth::OrHash
              ),
            forwarded_headers: T::Array[String],
            open_to_every_key: T::Boolean,
            static_headers: T::Hash[Symbol, String],
            tools: T::Array[String],
            transport:
              Telnyx::AgentGateways::McpServerCreateParams::Transport::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AgentGateways::AgentGatewayMcpServerResponse)
        end
        def create(
          # The Agent Gateway's `id`.
          instance_id,
          # A name for the server, unique on the instance across MCP servers and APIs,
          # regardless of case. Up to 100 letters, digits, `_`, and `.`. The gateway
          # prefixes the server's tools with it and a hyphen.
          name:,
          # The server's MCP endpoint, `http` or `https`.
          url:,
          # How the gateway authenticates to the server. Replaced whole on an update;
          # `{"type": "none"}` removes the credential.
          auth: nil,
          # Headers copied from the agent's request, by name.
          forwarded_headers: nil,
          # `true` lets every key on the instance use the server, granted or not.
          open_to_every_key: nil,
          # Headers sent on every request.
          static_headers: nil,
          # The tools the server exposes to every key, by name. `[]` exposes every tool.
          tools: nil,
          # `http` for Streamable HTTP, or `sse` for Server-Sent Events.
          transport: nil,
          request_options: {}
        )
        end

        # Changes an MCP server's settings. A field left out stays as it is. `auth` is
        # replaced whole, `tools: []` exposes every tool, and `static_headers: {}` clears
        # the headers. The instance must be `ready`; otherwise the request answers `409`.
        sig do
          params(
            server_id: String,
            instance_id: String,
            auth:
              T.any(
                Telnyx::AgentGateways::AgentGatewayNoAuth::OrHash,
                Telnyx::AgentGateways::AgentGatewayStaticAuth::OrHash,
                Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials::OrHash,
                Telnyx::AgentGateways::AgentGatewayPassthroughAuth::OrHash,
                Telnyx::AgentGateways::AgentGatewayAwsSigV4Auth::OrHash
              ),
            forwarded_headers: T::Array[String],
            name: String,
            open_to_every_key: T::Boolean,
            static_headers: T::Hash[Symbol, String],
            tools: T::Array[String],
            transport:
              Telnyx::AgentGateways::McpServerUpdateParams::Transport::OrSymbol,
            url: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AgentGateways::AgentGatewayMcpServerResponse)
        end
        def update(
          # Path param: The MCP server's `id`.
          server_id,
          # Path param: The Agent Gateway's `id`.
          instance_id:,
          # Body param: How the gateway authenticates to the server. Replaced whole on an
          # update; `{"type": "none"}` removes the credential.
          auth: nil,
          # Body param: Headers copied from the agent's request, by name.
          forwarded_headers: nil,
          # Body param: A name for the server, unique on the instance across MCP servers and
          # APIs, regardless of case. Letters, digits, `_`, and `.`. The gateway prefixes
          # the server's tools with it and a hyphen.
          name: nil,
          # Body param: `true` lets every key on the instance use the server, granted or
          # not.
          open_to_every_key: nil,
          # Body param: Headers sent on every request.
          static_headers: nil,
          # Body param: The tools the server exposes to every key, by name. `[]` exposes
          # every tool.
          tools: nil,
          # Body param: `http` for Streamable HTTP, or `sse` for Server-Sent Events.
          transport: nil,
          # Body param: The server's MCP endpoint, `http` or `https`.
          url: nil,
          request_options: {}
        )
        end

        # Lists the MCP servers the instance serves at `{gateway_url}/mcp`, without their
        # credentials. The instance must be `ready`; otherwise the request answers `409`.
        sig do
          params(
            instance_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AgentGateways::McpServerListResponse)
        end
        def list(
          # The Agent Gateway's `id`.
          instance_id,
          request_options: {}
        )
        end

        # Removes an MCP server and returns it as it was. Its `id` stays in the tool
        # permissions that name it until they are next set. The instance must be `ready`;
        # otherwise the request answers `409`.
        sig do
          params(
            server_id: String,
            instance_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AgentGateways::AgentGatewayMcpServerResponse)
        end
        def delete(
          # The MCP server's `id`.
          server_id,
          # The Agent Gateway's `id`.
          instance_id:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
