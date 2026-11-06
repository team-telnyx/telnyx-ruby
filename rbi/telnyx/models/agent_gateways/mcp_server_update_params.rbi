# typed: strong

module Telnyx
  module Models
    module AgentGateways
      class McpServerUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::McpServerUpdateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :instance_id

        sig { returns(String) }
        attr_accessor :server_id

        # How the gateway authenticates to the server. Replaced whole on an update;
        # `{"type": "none"}` removes the credential.
        sig do
          returns(
            T.nilable(
              T.any(
                Telnyx::AgentGateways::AgentGatewayNoAuth,
                Telnyx::AgentGateways::AgentGatewayStaticAuth,
                Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials,
                Telnyx::AgentGateways::AgentGatewayPassthroughAuth,
                Telnyx::AgentGateways::AgentGatewayAwsSigV4Auth
              )
            )
          )
        end
        attr_reader :auth

        sig do
          params(
            auth:
              T.any(
                Telnyx::AgentGateways::AgentGatewayNoAuth::OrHash,
                Telnyx::AgentGateways::AgentGatewayStaticAuth::OrHash,
                Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials::OrHash,
                Telnyx::AgentGateways::AgentGatewayPassthroughAuth::OrHash,
                Telnyx::AgentGateways::AgentGatewayAwsSigV4Auth::OrHash
              )
          ).void
        end
        attr_writer :auth

        # Headers copied from the agent's request, by name.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :forwarded_headers

        sig { params(forwarded_headers: T::Array[String]).void }
        attr_writer :forwarded_headers

        # A name for the server, unique on the instance across MCP servers and APIs,
        # regardless of case. Letters, digits, `_`, and `.`. The gateway prefixes the
        # server's tools with it and a hyphen.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # `true` lets every key on the instance use the server, granted or not.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :open_to_every_key

        sig { params(open_to_every_key: T::Boolean).void }
        attr_writer :open_to_every_key

        # Headers sent on every request.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :static_headers

        sig { params(static_headers: T::Hash[Symbol, String]).void }
        attr_writer :static_headers

        # The tools the server exposes to every key, by name. `[]` exposes every tool.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tools

        sig { params(tools: T::Array[String]).void }
        attr_writer :tools

        # `http` for Streamable HTTP, or `sse` for Server-Sent Events.
        sig do
          returns(
            T.nilable(
              Telnyx::AgentGateways::McpServerUpdateParams::Transport::OrSymbol
            )
          )
        end
        attr_reader :transport

        sig do
          params(
            transport:
              Telnyx::AgentGateways::McpServerUpdateParams::Transport::OrSymbol
          ).void
        end
        attr_writer :transport

        # The server's MCP endpoint, `http` or `https`.
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig do
          params(
            instance_id: String,
            server_id: String,
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
          ).returns(T.attached_class)
        end
        def self.new(
          instance_id:,
          server_id:,
          # How the gateway authenticates to the server. Replaced whole on an update;
          # `{"type": "none"}` removes the credential.
          auth: nil,
          # Headers copied from the agent's request, by name.
          forwarded_headers: nil,
          # A name for the server, unique on the instance across MCP servers and APIs,
          # regardless of case. Letters, digits, `_`, and `.`. The gateway prefixes the
          # server's tools with it and a hyphen.
          name: nil,
          # `true` lets every key on the instance use the server, granted or not.
          open_to_every_key: nil,
          # Headers sent on every request.
          static_headers: nil,
          # The tools the server exposes to every key, by name. `[]` exposes every tool.
          tools: nil,
          # `http` for Streamable HTTP, or `sse` for Server-Sent Events.
          transport: nil,
          # The server's MCP endpoint, `http` or `https`.
          url: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              instance_id: String,
              server_id: String,
              auth:
                T.any(
                  Telnyx::AgentGateways::AgentGatewayNoAuth,
                  Telnyx::AgentGateways::AgentGatewayStaticAuth,
                  Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials,
                  Telnyx::AgentGateways::AgentGatewayPassthroughAuth,
                  Telnyx::AgentGateways::AgentGatewayAwsSigV4Auth
                ),
              forwarded_headers: T::Array[String],
              name: String,
              open_to_every_key: T::Boolean,
              static_headers: T::Hash[Symbol, String],
              tools: T::Array[String],
              transport:
                Telnyx::AgentGateways::McpServerUpdateParams::Transport::OrSymbol,
              url: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # How the gateway authenticates to the server. Replaced whole on an update;
        # `{"type": "none"}` removes the credential.
        module Auth
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::AgentGateways::AgentGatewayNoAuth,
                Telnyx::AgentGateways::AgentGatewayStaticAuth,
                Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials,
                Telnyx::AgentGateways::AgentGatewayPassthroughAuth,
                Telnyx::AgentGateways::AgentGatewayAwsSigV4Auth
              )
            end

          sig do
            override.returns(
              T::Array[
                Telnyx::AgentGateways::McpServerUpdateParams::Auth::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # `http` for Streamable HTTP, or `sse` for Server-Sent Events.
        module Transport
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::AgentGateways::McpServerUpdateParams::Transport
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HTTP =
            T.let(
              :http,
              Telnyx::AgentGateways::McpServerUpdateParams::Transport::TaggedSymbol
            )
          SSE =
            T.let(
              :sse,
              Telnyx::AgentGateways::McpServerUpdateParams::Transport::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AgentGateways::McpServerUpdateParams::Transport::TaggedSymbol
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
