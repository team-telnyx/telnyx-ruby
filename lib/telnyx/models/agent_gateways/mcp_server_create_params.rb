# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::McpServers#create
      class McpServerCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute instance_id
        #
        #   @return [String]
        required :instance_id, String

        # @!attribute name
        #   A name for the server, unique on the instance across MCP servers and APIs,
        #   regardless of case. Up to 100 letters, digits, `_`, and `.`. The gateway
        #   prefixes the server's tools with it and a hyphen.
        #
        #   @return [String]
        required :name, String

        # @!attribute url
        #   The server's MCP endpoint, `http` or `https`.
        #
        #   @return [String]
        required :url, String

        # @!attribute auth
        #   How the gateway authenticates to the server. Replaced whole on an update;
        #   `{"type": "none"}` removes the credential.
        #
        #   @return [Telnyx::Models::AgentGateways::AgentGatewayNoAuth, Telnyx::Models::AgentGateways::AgentGatewayStaticAuth, Telnyx::Models::AgentGateways::AgentGatewayOAuthClientCredentials, Telnyx::Models::AgentGateways::AgentGatewayPassthroughAuth, Telnyx::Models::AgentGateways::AgentGatewayAwsSigV4Auth, nil]
        optional :auth, union: -> { Telnyx::AgentGateways::McpServerCreateParams::Auth }

        # @!attribute forwarded_headers
        #   Headers copied from the agent's request, by name.
        #
        #   @return [Array<String>, nil]
        optional :forwarded_headers, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute open_to_every_key
        #   `true` lets every key on the instance use the server, granted or not.
        #
        #   @return [Boolean, nil]
        optional :open_to_every_key, Telnyx::Internal::Type::Boolean

        # @!attribute static_headers
        #   Headers sent on every request.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :static_headers, Telnyx::Internal::Type::HashOf[String]

        # @!attribute tools
        #   The tools the server exposes to every key, by name. `[]` exposes every tool.
        #
        #   @return [Array<String>, nil]
        optional :tools, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute transport
        #   `http` for Streamable HTTP, or `sse` for Server-Sent Events.
        #
        #   @return [Symbol, Telnyx::Models::AgentGateways::McpServerCreateParams::Transport, nil]
        optional :transport, enum: -> { Telnyx::AgentGateways::McpServerCreateParams::Transport }

        # @!method initialize(instance_id:, name:, url:, auth: nil, forwarded_headers: nil, open_to_every_key: nil, static_headers: nil, tools: nil, transport: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AgentGateways::McpServerCreateParams} for more details.
        #
        #   @param instance_id [String]
        #
        #   @param name [String] A name for the server, unique on the instance across MCP servers and APIs, regar
        #
        #   @param url [String] The server's MCP endpoint, `http` or `https`.
        #
        #   @param auth [Telnyx::Models::AgentGateways::AgentGatewayNoAuth, Telnyx::Models::AgentGateways::AgentGatewayStaticAuth, Telnyx::Models::AgentGateways::AgentGatewayOAuthClientCredentials, Telnyx::Models::AgentGateways::AgentGatewayPassthroughAuth, Telnyx::Models::AgentGateways::AgentGatewayAwsSigV4Auth] How the gateway authenticates to the server. Replaced whole on an update; `{"typ
        #
        #   @param forwarded_headers [Array<String>] Headers copied from the agent's request, by name.
        #
        #   @param open_to_every_key [Boolean] `true` lets every key on the instance use the server, granted or not.
        #
        #   @param static_headers [Hash{Symbol=>String}] Headers sent on every request.
        #
        #   @param tools [Array<String>] The tools the server exposes to every key, by name. `[]` exposes every tool.
        #
        #   @param transport [Symbol, Telnyx::Models::AgentGateways::McpServerCreateParams::Transport] `http` for Streamable HTTP, or `sse` for Server-Sent Events.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # How the gateway authenticates to the server. Replaced whole on an update;
        # `{"type": "none"}` removes the credential.
        module Auth
          extend Telnyx::Internal::Type::Union

          # The gateway sends no credential.
          variant -> { Telnyx::AgentGateways::AgentGatewayNoAuth }

          # A static credential the gateway sends on every request. Write-only: responses show its `type` only.
          variant -> { Telnyx::AgentGateways::AgentGatewayStaticAuth }

          # The gateway gets its own access token with the `client_credentials` grant and sends it as a bearer token on every request, renewing it before it expires. The client ID and secret are write-only.
          variant -> { Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials }

          # The gateway forwards the agent's own `Authorization` header to the server unchanged.
          variant -> { Telnyx::AgentGateways::AgentGatewayPassthroughAuth }

          # The gateway signs each request with AWS Signature Version 4. Without keys or a role, it uses the instance's own AWS identity. Keys are write-only.
          variant -> { Telnyx::AgentGateways::AgentGatewayAwsSigV4Auth }

          # @!method self.variants
          #   @return [Array(Telnyx::Models::AgentGateways::AgentGatewayNoAuth, Telnyx::Models::AgentGateways::AgentGatewayStaticAuth, Telnyx::Models::AgentGateways::AgentGatewayOAuthClientCredentials, Telnyx::Models::AgentGateways::AgentGatewayPassthroughAuth, Telnyx::Models::AgentGateways::AgentGatewayAwsSigV4Auth)]
        end

        # `http` for Streamable HTTP, or `sse` for Server-Sent Events.
        module Transport
          extend Telnyx::Internal::Type::Enum

          HTTP = :http
          SSE = :sse

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
