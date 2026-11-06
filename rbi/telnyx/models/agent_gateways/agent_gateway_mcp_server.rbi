# typed: strong

module Telnyx
  module Models
    AgentGatewayMcpServer = AgentGateways::AgentGatewayMcpServer

    module AgentGateways
      class AgentGatewayMcpServer < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayMcpServer,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the server.
        sig { returns(String) }
        attr_accessor :id

        # The server's outbound authentication method. Credentials are never returned.
        sig { returns(Telnyx::AgentGateways::AgentGatewayShownAuth) }
        attr_reader :auth

        sig do
          params(
            auth: Telnyx::AgentGateways::AgentGatewayShownAuth::OrHash
          ).void
        end
        attr_writer :auth

        sig { returns(T.nilable(Time)) }
        attr_accessor :created_at

        # Headers copied from the agent's request, by name.
        sig { returns(T::Array[String]) }
        attr_accessor :forwarded_headers

        # A name for the server, unique on the instance across MCP servers and APIs,
        # regardless of case. Letters, digits, `_`, and `.`. The gateway prefixes the
        # server's tools with it and a hyphen.
        sig { returns(String) }
        attr_accessor :name

        # `true` lets every key on the instance use the server, granted or not.
        sig { returns(T::Boolean) }
        attr_accessor :open_to_every_key

        # Headers sent on every request.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :static_headers

        # The tools the server exposes to every key, by name. `[]` exposes every tool.
        sig { returns(T::Array[String]) }
        attr_accessor :tools

        # `http` for Streamable HTTP, or `sse` for Server-Sent Events.
        sig do
          returns(
            Telnyx::AgentGateways::AgentGatewayMcpServer::Transport::TaggedSymbol
          )
        end
        attr_accessor :transport

        sig { returns(T.nilable(Time)) }
        attr_accessor :updated_at

        # The server's MCP endpoint.
        sig { returns(String) }
        attr_accessor :url

        sig do
          params(
            id: String,
            auth: Telnyx::AgentGateways::AgentGatewayShownAuth::OrHash,
            created_at: T.nilable(Time),
            forwarded_headers: T::Array[String],
            name: String,
            open_to_every_key: T::Boolean,
            static_headers: T::Hash[Symbol, String],
            tools: T::Array[String],
            transport:
              Telnyx::AgentGateways::AgentGatewayMcpServer::Transport::OrSymbol,
            updated_at: T.nilable(Time),
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the server.
          id:,
          # The server's outbound authentication method. Credentials are never returned.
          auth:,
          created_at:,
          # Headers copied from the agent's request, by name.
          forwarded_headers:,
          # A name for the server, unique on the instance across MCP servers and APIs,
          # regardless of case. Letters, digits, `_`, and `.`. The gateway prefixes the
          # server's tools with it and a hyphen.
          name:,
          # `true` lets every key on the instance use the server, granted or not.
          open_to_every_key:,
          # Headers sent on every request.
          static_headers:,
          # The tools the server exposes to every key, by name. `[]` exposes every tool.
          tools:,
          # `http` for Streamable HTTP, or `sse` for Server-Sent Events.
          transport:,
          updated_at:,
          # The server's MCP endpoint.
          url:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              auth: Telnyx::AgentGateways::AgentGatewayShownAuth,
              created_at: T.nilable(Time),
              forwarded_headers: T::Array[String],
              name: String,
              open_to_every_key: T::Boolean,
              static_headers: T::Hash[Symbol, String],
              tools: T::Array[String],
              transport:
                Telnyx::AgentGateways::AgentGatewayMcpServer::Transport::TaggedSymbol,
              updated_at: T.nilable(Time),
              url: String
            }
          )
        end
        def to_hash
        end

        # `http` for Streamable HTTP, or `sse` for Server-Sent Events.
        module Transport
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::AgentGateways::AgentGatewayMcpServer::Transport
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HTTP =
            T.let(
              :http,
              Telnyx::AgentGateways::AgentGatewayMcpServer::Transport::TaggedSymbol
            )
          SSE =
            T.let(
              :sse,
              Telnyx::AgentGateways::AgentGatewayMcpServer::Transport::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AgentGateways::AgentGatewayMcpServer::Transport::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
