# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::APIs#create
      class APICreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute instance_id
        #
        #   @return [String]
        required :instance_id, String

        # @!attribute name
        #   A name for the API, unique on the instance across MCP servers and APIs,
        #   regardless of case. Up to 100 letters, digits, `_`, and `.`. The gateway
        #   prefixes the API's tools with it and a hyphen.
        #
        #   @return [String]
        required :name, String

        # @!attribute spec_url
        #   The URL of the API's OpenAPI description: OpenAPI 3.0, OpenAPI 3.1, or Swagger
        #   2.0.
        #
        #   @return [String]
        required :spec_url, String

        # @!attribute auth
        #   How the gateway authenticates to the API. AWS Signature Version 4 is for MCP
        #   servers only. Replaced whole on an update.
        #
        #   @return [Telnyx::Models::AgentGateways::AgentGatewayNoAuth, Telnyx::Models::AgentGateways::AgentGatewayStaticAuth, Telnyx::Models::AgentGateways::AgentGatewayOAuthClientCredentials, Telnyx::Models::AgentGateways::AgentGatewayPassthroughAuth, nil]
        optional :auth, union: -> { Telnyx::AgentGateways::APICreateParams::Auth }

        # @!attribute base_url
        #   Where the gateway sends the API's requests. Without it, the gateway takes the
        #   description's first `servers` entry.
        #
        #   @return [String, nil]
        optional :base_url, String, nil?: true

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
        #   The operations the API exposes as tools, by tool name. `[]` exposes every
        #   operation.
        #
        #   @return [Array<String>, nil]
        optional :tools, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(instance_id:, name:, spec_url:, auth: nil, base_url: nil, forwarded_headers: nil, open_to_every_key: nil, static_headers: nil, tools: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AgentGateways::APICreateParams} for more details.
        #
        #   @param instance_id [String]
        #
        #   @param name [String] A name for the API, unique on the instance across MCP servers and APIs, regardle
        #
        #   @param spec_url [String] The URL of the API's OpenAPI description: OpenAPI 3.0, OpenAPI 3.1, or Swagger 2
        #
        #   @param auth [Telnyx::Models::AgentGateways::AgentGatewayNoAuth, Telnyx::Models::AgentGateways::AgentGatewayStaticAuth, Telnyx::Models::AgentGateways::AgentGatewayOAuthClientCredentials, Telnyx::Models::AgentGateways::AgentGatewayPassthroughAuth] How the gateway authenticates to the API. AWS Signature Version 4 is for MCP ser
        #
        #   @param base_url [String, nil] Where the gateway sends the API's requests. Without it, the gateway takes the de
        #
        #   @param forwarded_headers [Array<String>] Headers copied from the agent's request, by name.
        #
        #   @param open_to_every_key [Boolean] `true` lets every key on the instance use the server, granted or not.
        #
        #   @param static_headers [Hash{Symbol=>String}] Headers sent on every request.
        #
        #   @param tools [Array<String>] The operations the API exposes as tools, by tool name. `[]` exposes every operat
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # How the gateway authenticates to the API. AWS Signature Version 4 is for MCP
        # servers only. Replaced whole on an update.
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

          # @!method self.variants
          #   @return [Array(Telnyx::Models::AgentGateways::AgentGatewayNoAuth, Telnyx::Models::AgentGateways::AgentGatewayStaticAuth, Telnyx::Models::AgentGateways::AgentGatewayOAuthClientCredentials, Telnyx::Models::AgentGateways::AgentGatewayPassthroughAuth)]
        end
      end
    end
  end
end
