# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      class AgentGatewayMcpServer < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the server.
        #
        #   @return [String]
        required :id, String

        # @!attribute auth
        #   The server's outbound authentication method. Credentials are never returned.
        #
        #   @return [Telnyx::Models::AgentGateways::AgentGatewayShownAuth]
        required :auth, -> { Telnyx::AgentGateways::AgentGatewayShownAuth }

        # @!attribute created_at
        #
        #   @return [Time, nil]
        required :created_at, Time, nil?: true

        # @!attribute forwarded_headers
        #   Headers copied from the agent's request, by name.
        #
        #   @return [Array<String>]
        required :forwarded_headers, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute name
        #   A name for the server, unique on the instance across MCP servers and APIs,
        #   regardless of case. Letters, digits, `_`, and `.`. The gateway prefixes the
        #   server's tools with it and a hyphen.
        #
        #   @return [String]
        required :name, String

        # @!attribute open_to_every_key
        #   `true` lets every key on the instance use the server, granted or not.
        #
        #   @return [Boolean]
        required :open_to_every_key, Telnyx::Internal::Type::Boolean

        # @!attribute static_headers
        #   Headers sent on every request.
        #
        #   @return [Hash{Symbol=>String}]
        required :static_headers, Telnyx::Internal::Type::HashOf[String]

        # @!attribute tools
        #   The tools the server exposes to every key, by name. `[]` exposes every tool.
        #
        #   @return [Array<String>]
        required :tools, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute transport
        #   `http` for Streamable HTTP, or `sse` for Server-Sent Events.
        #
        #   @return [Symbol, Telnyx::Models::AgentGateways::AgentGatewayMcpServer::Transport]
        required :transport, enum: -> { Telnyx::AgentGateways::AgentGatewayMcpServer::Transport }

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        required :updated_at, Time, nil?: true

        # @!attribute url
        #   The server's MCP endpoint.
        #
        #   @return [String]
        required :url, String

        # @!method initialize(id:, auth:, created_at:, forwarded_headers:, name:, open_to_every_key:, static_headers:, tools:, transport:, updated_at:, url:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AgentGateways::AgentGatewayMcpServer} for more details.
        #
        #   @param id [String] Identifies the server.
        #
        #   @param auth [Telnyx::Models::AgentGateways::AgentGatewayShownAuth] The server's outbound authentication method. Credentials are never returned.
        #
        #   @param created_at [Time, nil]
        #
        #   @param forwarded_headers [Array<String>] Headers copied from the agent's request, by name.
        #
        #   @param name [String] A name for the server, unique on the instance across MCP servers and APIs, regar
        #
        #   @param open_to_every_key [Boolean] `true` lets every key on the instance use the server, granted or not.
        #
        #   @param static_headers [Hash{Symbol=>String}] Headers sent on every request.
        #
        #   @param tools [Array<String>] The tools the server exposes to every key, by name. `[]` exposes every tool.
        #
        #   @param transport [Symbol, Telnyx::Models::AgentGateways::AgentGatewayMcpServer::Transport] `http` for Streamable HTTP, or `sse` for Server-Sent Events.
        #
        #   @param updated_at [Time, nil]
        #
        #   @param url [String] The server's MCP endpoint.

        # `http` for Streamable HTTP, or `sse` for Server-Sent Events.
        #
        # @see Telnyx::Models::AgentGateways::AgentGatewayMcpServer#transport
        module Transport
          extend Telnyx::Internal::Type::Enum

          HTTP = :http
          SSE = :sse

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    AgentGatewayMcpServer = AgentGateways::AgentGatewayMcpServer
  end
end
