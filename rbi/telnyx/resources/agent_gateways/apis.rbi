# typed: strong

module Telnyx
  module Resources
    class AgentGateways
      # REST APIs on an instance, served to agents as tools.
      class APIs
        # Adds a REST API by its OpenAPI description. Each operation becomes a tool at
        # `{gateway_url}/mcp`, named with the API's `name`, a hyphen, and the lowercased
        # `operationId`. A description the gateway cannot fetch yields an API with no
        # tools. The instance must be `ready`; otherwise the request answers `409`.
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
          ).returns(Telnyx::AgentGateways::AgentGatewayAPIResponse)
        end
        def create(
          # The Agent Gateway's `id`.
          instance_id,
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

        # Changes an API's settings. A field left out stays as it is, `"base_url": null`
        # clears the base URL, and `auth` is replaced whole. The instance must be `ready`;
        # otherwise the request answers `409`.
        sig do
          params(
            api_id: String,
            instance_id: String,
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
          ).returns(Telnyx::AgentGateways::AgentGatewayAPIResponse)
        end
        def update(
          # Path param: The API's `id`.
          api_id,
          # Path param: The Agent Gateway's `id`.
          instance_id:,
          # Body param: How the gateway authenticates to the API. AWS Signature Version 4 is
          # for MCP servers only. Replaced whole on an update.
          auth: nil,
          # Body param: Where the gateway sends the API's requests. Without it, the gateway
          # takes the description's first `servers` entry.
          base_url: nil,
          # Body param: Headers copied from the agent's request, by name.
          forwarded_headers: nil,
          # Body param: A name for the API, unique on the instance across MCP servers and
          # APIs, regardless of case. Letters, digits, `_`, and `.`. The gateway prefixes
          # the API's tools with it and a hyphen.
          name: nil,
          # Body param: `true` lets every key on the instance use the server, granted or
          # not.
          open_to_every_key: nil,
          # Body param: The URL of the API's OpenAPI description: OpenAPI 3.0, OpenAPI 3.1,
          # or Swagger 2.0.
          spec_url: nil,
          # Body param: Headers sent on every request.
          static_headers: nil,
          # Body param: The operations the API exposes as tools, by tool name. `[]` exposes
          # every operation.
          tools: nil,
          request_options: {}
        )
        end

        # Lists the REST APIs the instance serves as tools, without their credentials. The
        # instance must be `ready`; otherwise the request answers `409`.
        sig do
          params(
            instance_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AgentGateways::APIListResponse)
        end
        def list(
          # The Agent Gateway's `id`.
          instance_id,
          request_options: {}
        )
        end

        # Removes an API and returns it as it was. An MCP server's `id` answers `404`. The
        # instance must be `ready`; otherwise the request answers `409`.
        sig do
          params(
            api_id: String,
            instance_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AgentGateways::AgentGatewayAPIResponse)
        end
        def delete(
          # The API's `id`.
          api_id,
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
