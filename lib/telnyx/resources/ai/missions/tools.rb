# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Missions
        class Tools
          # Adds a new tool to the specified mission, defining an action agents can invoke
          # during runs of this mission.
          #
          # @overload create_tool(mission_id, request_options: {})
          #
          # @param mission_id [String] Unique identifier of the mission.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see Telnyx::Models::AI::Missions::ToolCreateToolParams
          def create_tool(mission_id, params = {})
            @client.request(
              method: :post,
              path: ["ai/missions/%1$s/tools", mission_id],
              model: Telnyx::Internal::Type::Unknown,
              options: params[:request_options]
            )
          end

          # Removes the specified tool from the mission so agents can no longer invoke it in
          # subsequent runs.
          #
          # @overload delete_tool(tool_id, mission_id:, request_options: {})
          #
          # @param tool_id [String] Unique identifier of the tool.
          #
          # @param mission_id [String] Unique identifier of the mission.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::AI::Missions::ToolDeleteToolParams
          def delete_tool(tool_id, params)
            parsed, options = Telnyx::AI::Missions::ToolDeleteToolParams.dump_request(params)
            mission_id =
              parsed.delete(:mission_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["ai/missions/%1$s/tools/%2$s", mission_id, tool_id],
              model: NilClass,
              options: options
            )
          end

          # Returns the definition of a single tool configured on the specified mission.
          #
          # @overload get_tool(tool_id, mission_id:, request_options: {})
          #
          # @param tool_id [String] Unique identifier of the tool.
          #
          # @param mission_id [String] Unique identifier of the mission.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see Telnyx::Models::AI::Missions::ToolGetToolParams
          def get_tool(tool_id, params)
            parsed, options = Telnyx::AI::Missions::ToolGetToolParams.dump_request(params)
            mission_id =
              parsed.delete(:mission_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["ai/missions/%1$s/tools/%2$s", mission_id, tool_id],
              model: Telnyx::Internal::Type::Unknown,
              options: options
            )
          end

          # Returns the tools configured on the specified mission. Tools define the actions
          # agents may invoke while executing the mission's runs.
          #
          # @overload list_tools(mission_id, request_options: {})
          #
          # @param mission_id [String] Unique identifier of the mission.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see Telnyx::Models::AI::Missions::ToolListToolsParams
          def list_tools(mission_id, params = {})
            @client.request(
              method: :get,
              path: ["ai/missions/%1$s/tools", mission_id],
              model: Telnyx::Internal::Type::Unknown,
              options: params[:request_options]
            )
          end

          # Replaces the definition of the specified tool on this mission.
          #
          # @overload update_tool(tool_id, mission_id:, request_options: {})
          #
          # @param tool_id [String] Unique identifier of the tool.
          #
          # @param mission_id [String] Unique identifier of the mission.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Object]
          #
          # @see Telnyx::Models::AI::Missions::ToolUpdateToolParams
          def update_tool(tool_id, params)
            parsed, options = Telnyx::AI::Missions::ToolUpdateToolParams.dump_request(params)
            mission_id =
              parsed.delete(:mission_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: ["ai/missions/%1$s/tools/%2$s", mission_id, tool_id],
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
