# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Missions
        class Runs
          class TelnyxAgents
            # List all Telnyx agents linked to a run
            #
            # @overload list(run_id, mission_id:, request_options: {})
            #
            # @param run_id [String]
            # @param mission_id [String]
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::AI::Missions::Runs::TelnyxAgentListResponse]
            #
            # @see Telnyx::Models::AI::Missions::Runs::TelnyxAgentListParams
            def list(run_id, params)
              parsed, options = Telnyx::AI::Missions::Runs::TelnyxAgentListParams.dump_request(params)
              mission_id =
                parsed.delete(:mission_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :get,
                path: ["ai/missions/%1$s/runs/%2$s/telnyx-agents", mission_id, run_id],
                model: Telnyx::Models::AI::Missions::Runs::TelnyxAgentListResponse,
                options: options
              )
            end

            # Link a Telnyx AI agent (voice/messaging) to a run
            #
            # @overload link(run_id, mission_id:, telnyx_agent_id:, request_options: {})
            #
            # @param run_id [String] Path param
            #
            # @param mission_id [String] Path param
            #
            # @param telnyx_agent_id [String] Body param: The Telnyx AI agent ID to link
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::AI::Missions::Runs::TelnyxAgentLinkResponse]
            #
            # @see Telnyx::Models::AI::Missions::Runs::TelnyxAgentLinkParams
            def link(run_id, params)
              parsed, options = Telnyx::AI::Missions::Runs::TelnyxAgentLinkParams.dump_request(params)
              mission_id =
                parsed.delete(:mission_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: ["ai/missions/%1$s/runs/%2$s/telnyx-agents", mission_id, run_id],
                body: parsed,
                model: Telnyx::Models::AI::Missions::Runs::TelnyxAgentLinkResponse,
                options: options
              )
            end

            # Unlink a Telnyx agent from a run
            #
            # @overload unlink(telnyx_agent_id, mission_id:, run_id:, request_options: {})
            #
            # @param telnyx_agent_id [String]
            # @param mission_id [String]
            # @param run_id [String]
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see Telnyx::Models::AI::Missions::Runs::TelnyxAgentUnlinkParams
            def unlink(telnyx_agent_id, params)
              parsed, options = Telnyx::AI::Missions::Runs::TelnyxAgentUnlinkParams.dump_request(params)
              mission_id =
                parsed.delete(:mission_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              run_id =
                parsed.delete(:run_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :delete,
                path: ["ai/missions/%1$s/runs/%2$s/telnyx-agents/%3$s", mission_id, run_id, telnyx_agent_id],
                model: NilClass,
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
end
