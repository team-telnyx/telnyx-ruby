# typed: strong

module Telnyx
  module Models
    module AgentGateways
      class APICreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::APICreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :instance_id

        # A name for the API, unique on the instance across MCP servers and APIs,
        # regardless of case. Up to 100 letters, digits, `_`, and `.`. The gateway
        # prefixes the API's tools with it and a hyphen.
        sig { returns(String) }
        attr_accessor :name

        # The URL of the API's OpenAPI description: OpenAPI 3.0, OpenAPI 3.1, or Swagger
        # 2.0.
        sig { returns(String) }
        attr_accessor :spec_url

        # How the gateway authenticates to the API. AWS Signature Version 4 is for MCP
        # servers only. Replaced whole on an update.
        sig do
          returns(
            T.nilable(
              T.any(
                Telnyx::AgentGateways::AgentGatewayNoAuth,
                Telnyx::AgentGateways::AgentGatewayStaticAuth,
                Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials,
                Telnyx::AgentGateways::AgentGatewayPassthroughAuth
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
                Telnyx::AgentGateways::AgentGatewayPassthroughAuth::OrHash
              )
          ).void
        end
        attr_writer :auth

        # Where the gateway sends the API's requests. Without it, the gateway takes the
        # description's first `servers` entry.
        sig { returns(T.nilable(String)) }
        attr_accessor :base_url

        # Headers copied from the agent's request, by name.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :forwarded_headers

        sig { params(forwarded_headers: T::Array[String]).void }
        attr_writer :forwarded_headers

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

        # The operations the API exposes as tools, by tool name. `[]` exposes every
        # operation.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tools

        sig { params(tools: T::Array[String]).void }
        attr_writer :tools

        sig do
          params(
            instance_id: String,
            name: String,
            spec_url: String,
            auth:
              T.any(
                Telnyx::AgentGateways::AgentGatewayNoAuth::OrHash,
                Telnyx::AgentGateways::AgentGatewayStaticAuth::OrHash,
                Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials::OrHash,
                Telnyx::AgentGateways::AgentGatewayPassthroughAuth::OrHash
              ),
            base_url: T.nilable(String),
            forwarded_headers: T::Array[String],
            open_to_every_key: T::Boolean,
            static_headers: T::Hash[Symbol, String],
            tools: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          instance_id:,
          # A name for the API, unique on the instance across MCP servers and APIs,
          # regardless of case. Up to 100 letters, digits, `_`, and `.`. The gateway
          # prefixes the API's tools with it and a hyphen.
          name:,
          # The URL of the API's OpenAPI description: OpenAPI 3.0, OpenAPI 3.1, or Swagger
          # 2.0.
          spec_url:,
          # How the gateway authenticates to the API. AWS Signature Version 4 is for MCP
          # servers only. Replaced whole on an update.
          auth: nil,
          # Where the gateway sends the API's requests. Without it, the gateway takes the
          # description's first `servers` entry.
          base_url: nil,
          # Headers copied from the agent's request, by name.
          forwarded_headers: nil,
          # `true` lets every key on the instance use the server, granted or not.
          open_to_every_key: nil,
          # Headers sent on every request.
          static_headers: nil,
          # The operations the API exposes as tools, by tool name. `[]` exposes every
          # operation.
          tools: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              instance_id: String,
              name: String,
              spec_url: String,
              auth:
                T.any(
                  Telnyx::AgentGateways::AgentGatewayNoAuth,
                  Telnyx::AgentGateways::AgentGatewayStaticAuth,
                  Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials,
                  Telnyx::AgentGateways::AgentGatewayPassthroughAuth
                ),
              base_url: T.nilable(String),
              forwarded_headers: T::Array[String],
              open_to_every_key: T::Boolean,
              static_headers: T::Hash[Symbol, String],
              tools: T::Array[String],
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # How the gateway authenticates to the API. AWS Signature Version 4 is for MCP
        # servers only. Replaced whole on an update.
        module Auth
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::AgentGateways::AgentGatewayNoAuth,
                Telnyx::AgentGateways::AgentGatewayStaticAuth,
                Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials,
                Telnyx::AgentGateways::AgentGatewayPassthroughAuth
              )
            end

          sig do
            override.returns(
              T::Array[Telnyx::AgentGateways::APICreateParams::Auth::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
