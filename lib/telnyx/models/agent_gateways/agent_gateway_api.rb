# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      class AgentGatewayAPI < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the API.
        #
        #   @return [String]
        required :id, String

        # @!attribute auth
        #   The server's outbound authentication method. Credentials are never returned.
        #
        #   @return [Telnyx::Models::AgentGateways::AgentGatewayShownAuth]
        required :auth, -> { Telnyx::AgentGateways::AgentGatewayShownAuth }

        # @!attribute base_url
        #   Where the gateway sends the API's requests. `null` takes the description's first
        #   `servers` entry.
        #
        #   @return [String, nil]
        required :base_url, String, nil?: true

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
        #   A name for the API, unique on the instance across MCP servers and APIs,
        #   regardless of case. Letters, digits, `_`, and `.`. The gateway prefixes the
        #   API's tools with it and a hyphen.
        #
        #   @return [String]
        required :name, String

        # @!attribute open_to_every_key
        #   `true` lets every key on the instance use the server, granted or not.
        #
        #   @return [Boolean]
        required :open_to_every_key, Telnyx::Internal::Type::Boolean

        # @!attribute spec_url
        #   The URL of the API's OpenAPI description.
        #
        #   @return [String]
        required :spec_url, String

        # @!attribute static_headers
        #   Headers sent on every request.
        #
        #   @return [Hash{Symbol=>String}]
        required :static_headers, Telnyx::Internal::Type::HashOf[String]

        # @!attribute tools
        #   The operations the API exposes as tools, by tool name. `[]` exposes every
        #   operation.
        #
        #   @return [Array<String>]
        required :tools, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        required :updated_at, Time, nil?: true

        # @!method initialize(id:, auth:, base_url:, created_at:, forwarded_headers:, name:, open_to_every_key:, spec_url:, static_headers:, tools:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AgentGateways::AgentGatewayAPI} for more details.
        #
        #   @param id [String] Identifies the API.
        #
        #   @param auth [Telnyx::Models::AgentGateways::AgentGatewayShownAuth] The server's outbound authentication method. Credentials are never returned.
        #
        #   @param base_url [String, nil] Where the gateway sends the API's requests. `null` takes the description's first
        #
        #   @param created_at [Time, nil]
        #
        #   @param forwarded_headers [Array<String>] Headers copied from the agent's request, by name.
        #
        #   @param name [String] A name for the API, unique on the instance across MCP servers and APIs, regardle
        #
        #   @param open_to_every_key [Boolean] `true` lets every key on the instance use the server, granted or not.
        #
        #   @param spec_url [String] The URL of the API's OpenAPI description.
        #
        #   @param static_headers [Hash{Symbol=>String}] Headers sent on every request.
        #
        #   @param tools [Array<String>] The operations the API exposes as tools, by tool name. `[]` exposes every operat
        #
        #   @param updated_at [Time, nil]
      end
    end

    AgentGatewayAPI = AgentGateways::AgentGatewayAPI
  end
end
