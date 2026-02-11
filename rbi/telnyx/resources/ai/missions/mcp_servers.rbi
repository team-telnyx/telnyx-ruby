# typed: strong

module Telnyx
  module Resources
    class AI
      class Missions
        class McpServers
          # Create a new MCP server for a mission
          sig do
            params(
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def create_mcp_server(mission_id, request_options: {})
          end

          # Delete an MCP server from a mission
          sig do
            params(
              mcp_server_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete_mcp_server(mcp_server_id, mission_id:, request_options: {})
          end

          # Get a specific MCP server by ID
          sig do
            params(
              mcp_server_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def get_mcp_server(mcp_server_id, mission_id:, request_options: {})
          end

          # List all MCP servers for a mission
          sig do
            params(
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def list_mcp_servers(mission_id, request_options: {})
          end

          # Update an MCP server definition
          sig do
            params(
              mcp_server_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def update_mcp_server(mcp_server_id, mission_id:, request_options: {})
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
