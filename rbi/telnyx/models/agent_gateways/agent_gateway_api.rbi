# typed: strong

module Telnyx
  module Models
    AgentGatewayAPI = AgentGateways::AgentGatewayAPI

    module AgentGateways
      class AgentGatewayAPI < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AgentGateways::AgentGatewayAPI,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the API.
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

        # Where the gateway sends the API's requests. `null` takes the description's first
        # `servers` entry.
        sig { returns(T.nilable(String)) }
        attr_accessor :base_url

        sig { returns(T.nilable(Time)) }
        attr_accessor :created_at

        # Headers copied from the agent's request, by name.
        sig { returns(T::Array[String]) }
        attr_accessor :forwarded_headers

        # A name for the API, unique on the instance across MCP servers and APIs,
        # regardless of case. Letters, digits, `_`, and `.`. The gateway prefixes the
        # API's tools with it and a hyphen.
        sig { returns(String) }
        attr_accessor :name

        # `true` lets every key on the instance use the server, granted or not.
        sig { returns(T::Boolean) }
        attr_accessor :open_to_every_key

        # The URL of the API's OpenAPI description.
        sig { returns(String) }
        attr_accessor :spec_url

        # Headers sent on every request.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :static_headers

        # The operations the API exposes as tools, by tool name. `[]` exposes every
        # operation.
        sig { returns(T::Array[String]) }
        attr_accessor :tools

        sig { returns(T.nilable(Time)) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            auth: Telnyx::AgentGateways::AgentGatewayShownAuth::OrHash,
            base_url: T.nilable(String),
            created_at: T.nilable(Time),
            forwarded_headers: T::Array[String],
            name: String,
            open_to_every_key: T::Boolean,
            spec_url: String,
            static_headers: T::Hash[Symbol, String],
            tools: T::Array[String],
            updated_at: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the API.
          id:,
          # The server's outbound authentication method. Credentials are never returned.
          auth:,
          # Where the gateway sends the API's requests. `null` takes the description's first
          # `servers` entry.
          base_url:,
          created_at:,
          # Headers copied from the agent's request, by name.
          forwarded_headers:,
          # A name for the API, unique on the instance across MCP servers and APIs,
          # regardless of case. Letters, digits, `_`, and `.`. The gateway prefixes the
          # API's tools with it and a hyphen.
          name:,
          # `true` lets every key on the instance use the server, granted or not.
          open_to_every_key:,
          # The URL of the API's OpenAPI description.
          spec_url:,
          # Headers sent on every request.
          static_headers:,
          # The operations the API exposes as tools, by tool name. `[]` exposes every
          # operation.
          tools:,
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              auth: Telnyx::AgentGateways::AgentGatewayShownAuth,
              base_url: T.nilable(String),
              created_at: T.nilable(Time),
              forwarded_headers: T::Array[String],
              name: String,
              open_to_every_key: T::Boolean,
              spec_url: String,
              static_headers: T::Hash[Symbol, String],
              tools: T::Array[String],
              updated_at: T.nilable(Time)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
