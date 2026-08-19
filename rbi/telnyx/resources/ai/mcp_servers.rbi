# typed: strong

module Telnyx
  module Resources
    class AI
      class McpServers
        # Creates a new MCP server configuration on your account and returns the created
        # server.
        sig do
          params(
            name: String,
            type: String,
            url: String,
            allowed_tools: T.nilable(T::Array[String]),
            api_key_ref: T.nilable(String),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::McpServer)
        end
        def create(
          name:,
          type:,
          url:,
          allowed_tools: nil,
          api_key_ref: nil,
          request_options: {}
        )
        end

        # Retrieve details for a specific MCP server.
        sig do
          params(
            mcp_server_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::McpServer)
        end
        def retrieve(
          # Unique identifier of the mcp server.
          mcp_server_id,
          request_options: {}
        )
        end

        # Updates the specified MCP server's configuration and returns the updated server.
        sig do
          params(
            mcp_server_id: String,
            id: String,
            allowed_tools: T.nilable(T::Array[String]),
            api_key_ref: T.nilable(String),
            created_at: Time,
            name: String,
            type: String,
            url: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::McpServer)
        end
        def update(
          # Unique identifier of the mcp server.
          mcp_server_id,
          id: nil,
          allowed_tools: nil,
          api_key_ref: nil,
          created_at: nil,
          name: nil,
          type: nil,
          url: nil,
          request_options: {}
        )
        end

        # Returns a paginated list of the MCP servers configured on your account, with
        # optional filtering by type or URL.
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            type: String,
            url: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPaginationTopLevelArray[
              Telnyx::AI::McpServer
            ]
          )
        end
        def list(
          # Page number to retrieve (1-based).
          page_number: nil,
          # Number of items to return per page.
          page_size: nil,
          # Filter results by type.
          type: nil,
          # Filter results by url.
          url: nil,
          request_options: {}
        )
        end

        # Permanently deletes the specified MCP server configuration from your account.
        sig do
          params(
            mcp_server_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def delete(
          # Unique identifier of the mcp server.
          mcp_server_id,
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
