# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Missions
        class McpServers
          # Create a new MCP server for a mission
          #
          # @overload create_mcp_server(mission_id, request_options: {})
          #
          # @param mission_id [String]
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

          # Delete an MCP server from a mission
          #
          # @overload delete_mcp_server(mcp_server_id, mission_id:, request_options: {})
          #
          # @param mcp_server_id [String]
          # @param mission_id [String]
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

          # Get a specific MCP server by ID
          #
          # @overload get_mcp_server(mcp_server_id, mission_id:, request_options: {})
          #
          # @param mcp_server_id [String]
          # @param mission_id [String]
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

          # List all MCP servers for a mission
          #
          # @overload list_mcp_servers(mission_id, request_options: {})
          #
          # @param mission_id [String]
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

          # Update an MCP server definition
          #
          # @overload update_mcp_server(mcp_server_id, mission_id:, request_options: {})
          #
          # @param mcp_server_id [String]
          # @param mission_id [String]
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
