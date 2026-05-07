# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class AssistantMcpServer < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   ID of the MCP server to attach. This must be the `id` of an MCP server returned
        #   by the `/ai/mcp_servers` endpoints.
        #
        #   @return [String]
        required :id, String

        # @!attribute allowed_tools
        #   Optional per-assistant allowlist of MCP tool names. When omitted, the assistant
        #   uses the MCP server's configured `allowed_tools`.
        #
        #   @return [Array<String>, nil]
        optional :allowed_tools, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(id:, allowed_tools: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::AssistantMcpServer} for more details.
        #
        #   Reference to an MCP server attached to an assistant. Create and manage MCP
        #   servers with the `/ai/mcp_servers` endpoints, then attach them to assistants by
        #   ID.
        #
        #   @param id [String] ID of the MCP server to attach. This must be the `id` of an MCP server returned
        #
        #   @param allowed_tools [Array<String>] Optional per-assistant allowlist of MCP tool names. When omitted, the assistant
      end
    end
  end
end
