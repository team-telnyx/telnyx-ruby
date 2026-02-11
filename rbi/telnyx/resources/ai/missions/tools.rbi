# typed: strong

module Telnyx
  module Resources
    class AI
      class Missions
        class Tools
          # Create a new tool for a mission
          sig do
            params(
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def create_tool(mission_id, request_options: {})
          end

          # Delete a tool from a mission
          sig do
            params(
              tool_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete_tool(tool_id, mission_id:, request_options: {})
          end

          # Get a specific tool by ID
          sig do
            params(
              tool_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def get_tool(tool_id, mission_id:, request_options: {})
          end

          # List all tools for a mission
          sig do
            params(
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def list_tools(mission_id, request_options: {})
          end

          # Update a tool definition
          sig do
            params(
              tool_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def update_tool(tool_id, mission_id:, request_options: {})
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
