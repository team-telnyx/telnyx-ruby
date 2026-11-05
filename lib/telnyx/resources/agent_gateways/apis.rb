# frozen_string_literal: true

module Telnyx
  module Resources
    class AgentGateways
      # REST APIs on an instance, served to agents as tools.
      class APIs
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AgentGateways::APICreateParams} for more details.
        #
        # Adds a REST API by its OpenAPI description. Each operation becomes a tool at
        # `{gateway_url}/mcp`, named with the API's `name`, a hyphen, and the lowercased
        # `operationId`. A description the gateway cannot fetch yields an API with no
        # tools. The instance must be `ready`; otherwise the request answers `409`.
        #
        # @overload create(instance_id, name:, spec_url:, auth: nil, base_url: nil, forwarded_headers: nil, open_to_every_key: nil, static_headers: nil, tools: nil, request_options: {})
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param name [String] A name for the API, unique on the instance across MCP servers and APIs, regardle
        #
        # @param spec_url [String] The URL of the API's OpenAPI description: OpenAPI 3.0, OpenAPI 3.1, or Swagger 2
        #
        # @param auth [Telnyx::Models::AgentGateways::AgentGatewayNoAuth, Telnyx::Models::AgentGateways::AgentGatewayStaticAuth, Telnyx::Models::AgentGateways::AgentGatewayOAuthClientCredentials, Telnyx::Models::AgentGateways::AgentGatewayPassthroughAuth] How the gateway authenticates to the API. AWS Signature Version 4 is for MCP ser
        #
        # @param base_url [String, nil] Where the gateway sends the API's requests. Without it, the gateway takes the de
        #
        # @param forwarded_headers [Array<String>] Headers copied from the agent's request, by name.
        #
        # @param open_to_every_key [Boolean] `true` lets every key on the instance use the server, granted or not.
        #
        # @param static_headers [Hash{Symbol=>String}] Headers sent on every request.
        #
        # @param tools [Array<String>] The operations the API exposes as tools, by tool name. `[]` exposes every operat
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::AgentGatewayAPIResponse]
        #
        # @see Telnyx::Models::AgentGateways::APICreateParams
        def create(instance_id, params)
          parsed, options = Telnyx::AgentGateways::APICreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["agent_gateways/%1$s/apis", instance_id],
            body: parsed,
            model: Telnyx::AgentGateways::AgentGatewayAPIResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AgentGateways::APIUpdateParams} for more details.
        #
        # Changes an API's settings. A field left out stays as it is, `"base_url": null`
        # clears the base URL, and `auth` is replaced whole. The instance must be `ready`;
        # otherwise the request answers `409`.
        #
        # @overload update(api_id, instance_id:, auth: nil, base_url: nil, forwarded_headers: nil, name: nil, open_to_every_key: nil, spec_url: nil, static_headers: nil, tools: nil, request_options: {})
        #
        # @param api_id [String] Path param: The API's `id`.
        #
        # @param instance_id [String] Path param: The Agent Gateway's `id`.
        #
        # @param auth [Telnyx::Models::AgentGateways::AgentGatewayNoAuth, Telnyx::Models::AgentGateways::AgentGatewayStaticAuth, Telnyx::Models::AgentGateways::AgentGatewayOAuthClientCredentials, Telnyx::Models::AgentGateways::AgentGatewayPassthroughAuth] Body param: How the gateway authenticates to the API. AWS Signature Version 4 is
        #
        # @param base_url [String, nil] Body param: Where the gateway sends the API's requests. Without it, the gateway
        #
        # @param forwarded_headers [Array<String>] Body param: Headers copied from the agent's request, by name.
        #
        # @param name [String] Body param: A name for the API, unique on the instance across MCP servers and AP
        #
        # @param open_to_every_key [Boolean] Body param: `true` lets every key on the instance use the server, granted or not
        #
        # @param spec_url [String] Body param: The URL of the API's OpenAPI description: OpenAPI 3.0, OpenAPI 3.1,
        #
        # @param static_headers [Hash{Symbol=>String}] Body param: Headers sent on every request.
        #
        # @param tools [Array<String>] Body param: The operations the API exposes as tools, by tool name. `[]` exposes
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::AgentGatewayAPIResponse]
        #
        # @see Telnyx::Models::AgentGateways::APIUpdateParams
        def update(api_id, params)
          parsed, options = Telnyx::AgentGateways::APIUpdateParams.dump_request(params)
          instance_id =
            parsed.delete(:instance_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["agent_gateways/%1$s/apis/%2$s", instance_id, api_id],
            body: parsed,
            model: Telnyx::AgentGateways::AgentGatewayAPIResponse,
            options: options
          )
        end

        # Lists the REST APIs the instance serves as tools, without their credentials. The
        # instance must be `ready`; otherwise the request answers `409`.
        #
        # @overload list(instance_id, request_options: {})
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::APIListResponse]
        #
        # @see Telnyx::Models::AgentGateways::APIListParams
        def list(instance_id, params = {})
          @client.request(
            method: :get,
            path: ["agent_gateways/%1$s/apis", instance_id],
            model: Telnyx::Models::AgentGateways::APIListResponse,
            options: params[:request_options]
          )
        end

        # Removes an API and returns it as it was. An MCP server's `id` answers `404`. The
        # instance must be `ready`; otherwise the request answers `409`.
        #
        # @overload delete(api_id, instance_id:, request_options: {})
        #
        # @param api_id [String] The API's `id`.
        #
        # @param instance_id [String] The Agent Gateway's `id`.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AgentGateways::AgentGatewayAPIResponse]
        #
        # @see Telnyx::Models::AgentGateways::APIDeleteParams
        def delete(api_id, params)
          parsed, options = Telnyx::AgentGateways::APIDeleteParams.dump_request(params)
          instance_id =
            parsed.delete(:instance_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["agent_gateways/%1$s/apis/%2$s", instance_id, api_id],
            model: Telnyx::AgentGateways::AgentGatewayAPIResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
