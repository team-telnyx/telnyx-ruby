# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Missions
        class McpServers
          # Adds an MCP server to the specified mission, making the server's tools available
          # to agents during runs of this mission.
          #
          # @overload create_mcp_server(mission_id, request_options: {})
          #
          # @param mission_id [String] Unique identifier of the mission.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see Telnyx::Models::AI::Missions::McpServerCreateMcpServerParams
          def create_mcp_server(mission_id, params = {})
            @client.request(
              method: :post,
              path: ["ai/missions/%1$s/mcp-servers", mission_id],
              model: Telnyx::Internal::Type::Unknown,
              options: params[:request_options]
            )
          end

          # Removes the specified MCP server from the mission, revoking agent access to its
          # tools in subsequent runs.
          #
          # @overload delete_mcp_server(mcp_server_id, mission_id:, request_options: {})
          #
          # @param mcp_server_id [String] Unique identifier of the mcp server.
          #
          # @param mission_id [String] Unique identifier of the mission.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::AI::Missions::McpServerDeleteMcpServerParams
          def delete_mcp_server(mcp_server_id, params)
            parsed, options = Telnyx::AI::Missions::McpServerDeleteMcpServerParams.dump_request(params)
            mission_id =
              parsed.delete(:mission_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["ai/missions/%1$s/mcp-servers/%2$s", mission_id, mcp_server_id],
              model: NilClass,
              options: options
            )
          end

          # Returns the configuration of a single MCP server attached to the specified
          # mission.
          #
          # @overload get_mcp_server(mcp_server_id, mission_id:, request_options: {})
          #
          # @param mcp_server_id [String] Unique identifier of the mcp server.
          #
          # @param mission_id [String] Unique identifier of the mission.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see Telnyx::Models::AI::Missions::McpServerGetMcpServerParams
          def get_mcp_server(mcp_server_id, params)
            parsed, options = Telnyx::AI::Missions::McpServerGetMcpServerParams.dump_request(params)
            mission_id =
              parsed.delete(:mission_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["ai/missions/%1$s/mcp-servers/%2$s", mission_id, mcp_server_id],
              model: Telnyx::Internal::Type::Unknown,
              options: options
            )
          end

          # Returns the MCP servers configured on the specified mission. MCP servers expose
          # external tools and data sources agents can use during runs.
          #
          # @overload list_mcp_servers(mission_id, request_options: {})
          #
          # @param mission_id [String] Unique identifier of the mission.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see Telnyx::Models::AI::Missions::McpServerListMcpServersParams
          def list_mcp_servers(mission_id, params = {})
            @client.request(
              method: :get,
              path: ["ai/missions/%1$s/mcp-servers", mission_id],
              model: Telnyx::Internal::Type::Unknown,
              options: params[:request_options]
            )
          end

          # Replaces the configuration of the specified MCP server on this mission.
          #
          # @overload update_mcp_server(mcp_server_id, mission_id:, request_options: {})
          #
          # @param mcp_server_id [String] Unique identifier of the mcp server.
          #
          # @param mission_id [String] Unique identifier of the mission.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see Telnyx::Models::AI::Missions::McpServerUpdateMcpServerParams
          def update_mcp_server(mcp_server_id, params)
            parsed, options = Telnyx::AI::Missions::McpServerUpdateMcpServerParams.dump_request(params)
            mission_id =
              parsed.delete(:mission_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: ["ai/missions/%1$s/mcp-servers/%2$s", mission_id, mcp_server_id],
              model: Telnyx::Internal::Type::Unknown,
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
