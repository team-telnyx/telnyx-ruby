# frozen_string_literal: true

module Telnyx
  module Resources
    class AgentGateways
      # REST APIs on an instance, served to agents as tools.
      # @return [Telnyx::Resources::AgentGateways::APIs]
      attr_reader :apis

      # Checks an instance runs on model and tool requests.
      # @return [Telnyx::Resources::AgentGateways::Guardrails]
      attr_reader :guardrails

      # Keys on an instance.
      # @return [Telnyx::Resources::AgentGateways::Keys]
      attr_reader :keys

      # MCP servers on an instance, served to agents at one MCP endpoint.
      # @return [Telnyx::Resources::AgentGateways::McpServers]
      attr_reader :mcp_servers

      # Named sets of guardrails an instance applies to requests.
      # @return [Telnyx::Resources::AgentGateways::Policies]
      attr_reader :policies

      # Where an instance applies each policy.
      # @return [Telnyx::Resources::AgentGateways::PolicyAttachments]
      attr_reader :policy_attachments

      # Teams on an instance: shared model lists, budgets, and rate limits.
      # @return [Telnyx::Resources::AgentGateways::Teams]
      attr_reader :teams

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::AgentGatewayCreateParams} for more details.
      #
      # Creates an Agent Gateway instance on one of the account's WireGuard Interfaces.
      # The instance starts `pending`, moves to `provisioning`, and then to `ready` or
      # `failed`. It joins the WireGuard Interface as a peer named `agw-<instance id>`,
      # and its `gateway_url` is set when it is `ready`.
      #
      # @overload create(wireguard_interface_id:, name: nil, request_options: {})
      #
      # @param wireguard_interface_id [String] One of the account's WireGuard Interfaces. The instance joins it as a peer, and
      #
      # @param name [String, nil] A label for people.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AgentGatewayResponse]
      #
      # @see Telnyx::Models::AgentGatewayCreateParams
      def create(params)
        parsed, options = Telnyx::AgentGatewayCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "agent_gateways",
          body: parsed,
          model: Telnyx::AgentGatewayResponse,
          options: options
        )
      end

      # Returns one of the account's Agent Gateway instances.
      #
      # @overload retrieve(instance_id, request_options: {})
      #
      # @param instance_id [String] The Agent Gateway's `id`.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AgentGatewayResponse]
      #
      # @see Telnyx::Models::AgentGatewayRetrieveParams
      def retrieve(instance_id, params = {})
        @client.request(
          method: :get,
          path: ["agent_gateways/%1$s", instance_id],
          model: Telnyx::AgentGatewayResponse,
          options: params[:request_options]
        )
      end

      # Lists the account's Agent Gateway instances, newest first, one page at a time.
      #
      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer] The page to return, counting from 1.
      #
      # @param page_size [Integer] Results per page.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AgentGateway>]
      #
      # @see Telnyx::Models::AgentGatewayListParams
      def list(params = {})
        parsed, options = Telnyx::AgentGatewayListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "agent_gateways",
          query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::AgentGateway,
          options: options
        )
      end

      # Deletes an Agent Gateway instance in any status. The response shows it
      # `deleting`; repeating the request answers the same until the instance is gone,
      # and then `404`. The instance's engine and everything stored on it are removed.
      #
      # @overload delete(instance_id, request_options: {})
      #
      # @param instance_id [String] The Agent Gateway's `id`.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AgentGatewayResponse]
      #
      # @see Telnyx::Models::AgentGatewayDeleteParams
      def delete(instance_id, params = {})
        @client.request(
          method: :delete,
          path: ["agent_gateways/%1$s", instance_id],
          model: Telnyx::AgentGatewayResponse,
          options: params[:request_options]
        )
      end

      # Lists the models the instance serves. Each has the name a request uses, the
      # Telnyx Inference model behind it, and its price per million tokens.
      #
      # @overload retrieve_models(instance_id, request_options: {})
      #
      # @param instance_id [String] The Agent Gateway's `id`.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AgentGatewayRetrieveModelsResponse]
      #
      # @see Telnyx::Models::AgentGatewayRetrieveModelsParams
      def retrieve_models(instance_id, params = {})
        @client.request(
          method: :get,
          path: ["agent_gateways/%1$s/models", instance_id],
          model: Telnyx::Models::AgentGatewayRetrieveModelsResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::AgentGatewayRetrieveSpendLogsParams} for more details.
      #
      # Lists the requests the instance served with its keys, newest first, one page at
      # a time. The window defaults to the last 24 hours and spans at most 31 days. A
      # row appears a few seconds after its request. The instance must be `ready`;
      # otherwise the request answers `409`.
      #
      # @overload retrieve_spend_logs(instance_id, end_: nil, key_id: nil, page_number: nil, page_size: nil, start: nil, team_id: nil, request_options: {})
      #
      # @param instance_id [String] The Agent Gateway's `id`.
      #
      # @param end_ [Time] The window's end, an RFC 3339 timestamp with an offset. Defaults to now.
      #
      # @param key_id [String] Only the requests made with this key.
      #
      # @param page_number [Integer] The page to return, counting from 1.
      #
      # @param page_size [Integer] Results per page.
      #
      # @param start [Time] The window's start, an RFC 3339 timestamp with an offset. Defaults to 24 hours b
      #
      # @param team_id [String] Only the requests made with this team's keys.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse]
      #
      # @see Telnyx::Models::AgentGatewayRetrieveSpendLogsParams
      def retrieve_spend_logs(instance_id, params = {})
        parsed, options = Telnyx::AgentGatewayRetrieveSpendLogsParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["agent_gateways/%1$s/spend_logs", instance_id],
          query: query.transform_keys(end_: "end", page_number: "page[number]", page_size: "page[size]"),
          model: Telnyx::Models::AgentGatewayRetrieveSpendLogsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @apis = Telnyx::Resources::AgentGateways::APIs.new(client: client)
        @guardrails = Telnyx::Resources::AgentGateways::Guardrails.new(client: client)
        @keys = Telnyx::Resources::AgentGateways::Keys.new(client: client)
        @mcp_servers = Telnyx::Resources::AgentGateways::McpServers.new(client: client)
        @policies = Telnyx::Resources::AgentGateways::Policies.new(client: client)
        @policy_attachments = Telnyx::Resources::AgentGateways::PolicyAttachments.new(client: client)
        @teams = Telnyx::Resources::AgentGateways::Teams.new(client: client)
      end
    end
  end
end
