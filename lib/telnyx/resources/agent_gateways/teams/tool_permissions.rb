# frozen_string_literal: true

module Telnyx
  module Resources
    class AgentGateways
      class Teams
        # The MCP servers and tools a key or team may use.
        class ToolPermissions
          # Replaces the grant whole and returns it. Every server must be one of the
          # instance's MCP servers or APIs, named once. A key reaches the servers granted to
          # it or to its team, and the servers open to every key; when both grant, only the
          # servers in both. The instance must be `ready`; otherwise the request answers
          # `409`.
          #
          # @overload create(team_id, instance_id:, servers:, request_options: {})
          #
          # @param team_id [String] Path param: The team's `id`.
          #
          # @param instance_id [String] Path param: The Agent Gateway's `id`.
          #
          # @param servers [Array<Telnyx::Models::AgentGateways::Keys::AgentGatewayToolPermissions::Server>] Body param: The servers granted, each with its tools. `[]` grants none.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AgentGateways::Keys::AgentGatewayToolPermissionsResponse]
          #
          # @see Telnyx::Models::AgentGateways::Teams::ToolPermissionCreateParams
          def create(team_id, params)
            parsed, options = Telnyx::AgentGateways::Teams::ToolPermissionCreateParams.dump_request(params)
            instance_id =
              parsed.delete(:instance_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: ["agent_gateways/%1$s/teams/%2$s/tool_permissions", instance_id, team_id],
              body: parsed,
              model: Telnyx::AgentGateways::Keys::AgentGatewayToolPermissionsResponse,
              options: options
            )
          end

          # Returns the MCP servers and APIs the team's keys may use, and the tools within
          # each. `servers: []` means none. The instance must be `ready`; otherwise the
          # request answers `409`.
          #
          # @overload list(team_id, instance_id:, request_options: {})
          #
          # @param team_id [String] The team's `id`.
          #
          # @param instance_id [String] The Agent Gateway's `id`.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AgentGateways::Keys::AgentGatewayToolPermissionsResponse]
          #
          # @see Telnyx::Models::AgentGateways::Teams::ToolPermissionListParams
          def list(team_id, params)
            parsed, options = Telnyx::AgentGateways::Teams::ToolPermissionListParams.dump_request(params)
            instance_id =
              parsed.delete(:instance_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["agent_gateways/%1$s/teams/%2$s/tool_permissions", instance_id, team_id],
              model: Telnyx::AgentGateways::Keys::AgentGatewayToolPermissionsResponse,
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
end
