# typed: strong

module Telnyx
  module Resources
    class AI
      class Missions
        class Tools
          # Adds a new tool to the specified mission, defining an action agents can invoke
          # during runs of this mission.
          sig do
            params(
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def create_tool(
            # Unique identifier of the mission.
            mission_id,
            request_options: {}
          )
          end

          # Removes the specified tool from the mission so agents can no longer invoke it in
          # subsequent runs.
          sig do
            params(
              tool_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete_tool(
            # Unique identifier of the tool.
            tool_id,
            # Unique identifier of the mission.
            mission_id:,
            request_options: {}
          )
          end

          # Returns the definition of a single tool configured on the specified mission.
          sig do
            params(
              tool_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def get_tool(
            # Unique identifier of the tool.
            tool_id,
            # Unique identifier of the mission.
            mission_id:,
            request_options: {}
          )
          end

          # Returns the tools configured on the specified mission. Tools define the actions
          # agents may invoke while executing the mission's runs.
          sig do
            params(
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def list_tools(
            # Unique identifier of the mission.
            mission_id,
            request_options: {}
          )
          end

          # Replaces the definition of the specified tool on this mission.
          sig do
            params(
              tool_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.anything)
          end
          def update_tool(
            # Unique identifier of the tool.
            tool_id,
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
