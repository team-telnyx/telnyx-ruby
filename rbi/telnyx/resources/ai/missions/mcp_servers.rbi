# typed: strong

module Telnyx
  module Resources
    class AI
      class Missions
        class McpServers
          # Adds an MCP server to the specified mission, making the server's tools available
          # to agents during runs of this mission.
          sig do
            params(
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def create_mcp_server(
            # Unique identifier of the mission.
            mission_id,
            request_options: {}
          )
          end

          # Removes the specified MCP server from the mission, revoking agent access to its
          # tools in subsequent runs.
          sig do
            params(
              mcp_server_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete_mcp_server(
            # Unique identifier of the mcp server.
            mcp_server_id,
            # Unique identifier of the mission.
            mission_id:,
            request_options: {}
          )
          end

          # Returns the configuration of a single MCP server attached to the specified
          # mission.
          sig do
            params(
              mcp_server_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def get_mcp_server(
            # Unique identifier of the mcp server.
            mcp_server_id,
            # Unique identifier of the mission.
            mission_id:,
            request_options: {}
          )
          end

          # Returns the MCP servers configured on the specified mission. MCP servers expose
          # external tools and data sources agents can use during runs.
          sig do
            params(
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def list_mcp_servers(
            # Unique identifier of the mission.
            mission_id,
            request_options: {}
          )
          end

          # Replaces the configuration of the specified MCP server on this mission.
          sig do
            params(
              mcp_server_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def update_mcp_server(
            # Unique identifier of the mcp server.
            mcp_server_id,
            # Unique identifier of the mission.
            mission_id:,
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
end
