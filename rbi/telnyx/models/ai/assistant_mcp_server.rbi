# typed: strong

module Telnyx
  module Models
    module AI
      class AssistantMcpServer < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::AssistantMcpServer, Telnyx::Internal::AnyHash)
          end

        # ID of the MCP server to attach. This must be the `id` of an MCP server returned
        # by the `/ai/mcp_servers` endpoints.
        sig { returns(String) }
        attr_accessor :id

        # Optional per-assistant allowlist of MCP tool names. When omitted, the assistant
        # uses the MCP server's configured `allowed_tools`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :allowed_tools

        sig { params(allowed_tools: T::Array[String]).void }
        attr_writer :allowed_tools

        # Reference to an MCP server attached to an assistant. Create and manage MCP
        # servers with the `/ai/mcp_servers` endpoints, then attach them to assistants by
        # ID.
        sig do
          params(id: String, allowed_tools: T::Array[String]).returns(
            T.attached_class
          )
        end
        def self.new(
          # ID of the MCP server to attach. This must be the `id` of an MCP server returned
          # by the `/ai/mcp_servers` endpoints.
          id:,
          # Optional per-assistant allowlist of MCP tool names. When omitted, the assistant
          # uses the MCP server's configured `allowed_tools`.
          allowed_tools: nil
        )
        end

        sig do
          override.returns({ id: String, allowed_tools: T::Array[String] })
        end
        def to_hash
        end
      end
    end
  end
end
