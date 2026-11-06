# typed: strong

module Telnyx
  module Models
    module AgentGateways
      class APIUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::APIUpdateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :instance_id

        sig { returns(String) }
        attr_accessor :api_id

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

        # A name for the API, unique on the instance across MCP servers and APIs,
        # regardless of case. Letters, digits, `_`, and `.`. The gateway prefixes the
        # API's tools with it and a hyphen.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # `true` lets every key on the instance use the server, granted or not.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :open_to_every_key

        sig { params(open_to_every_key: T::Boolean).void }
        attr_writer :open_to_every_key

        # The URL of the API's OpenAPI description: OpenAPI 3.0, OpenAPI 3.1, or Swagger
        # 2.0.
        sig { returns(T.nilable(String)) }
        attr_reader :spec_url

        sig { params(spec_url: String).void }
        attr_writer :spec_url

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
            api_id: String,
            auth:
              T.any(
                Telnyx::AgentGateways::AgentGatewayNoAuth::OrHash,
                Telnyx::AgentGateways::AgentGatewayStaticAuth::OrHash,
                Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials::OrHash,
                Telnyx::AgentGateways::AgentGatewayPassthroughAuth::OrHash
              ),
            base_url: T.nilable(String),
            forwarded_headers: T::Array[String],
            name: String,
            open_to_every_key: T::Boolean,
            spec_url: String,
            static_headers: T::Hash[Symbol, String],
            tools: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          instance_id:,
          api_id:,
          # How the gateway authenticates to the API. AWS Signature Version 4 is for MCP
          # servers only. Replaced whole on an update.
          auth: nil,
          # Where the gateway sends the API's requests. Without it, the gateway takes the
          # description's first `servers` entry.
          base_url: nil,
          # Headers copied from the agent's request, by name.
          forwarded_headers: nil,
          # A name for the API, unique on the instance across MCP servers and APIs,
          # regardless of case. Letters, digits, `_`, and `.`. The gateway prefixes the
          # API's tools with it and a hyphen.
          name: nil,
          # `true` lets every key on the instance use the server, granted or not.
          open_to_every_key: nil,
          # The URL of the API's OpenAPI description: OpenAPI 3.0, OpenAPI 3.1, or Swagger
          # 2.0.
          spec_url: nil,
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
              api_id: String,
              auth:
                T.any(
                  Telnyx::AgentGateways::AgentGatewayNoAuth,
                  Telnyx::AgentGateways::AgentGatewayStaticAuth,
                  Telnyx::AgentGateways::AgentGatewayOAuthClientCredentials,
                  Telnyx::AgentGateways::AgentGatewayPassthroughAuth
                ),
              base_url: T.nilable(String),
              forwarded_headers: T::Array[String],
              name: String,
              open_to_every_key: T::Boolean,
              spec_url: String,
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
              T::Array[Telnyx::AgentGateways::APIUpdateParams::Auth::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
