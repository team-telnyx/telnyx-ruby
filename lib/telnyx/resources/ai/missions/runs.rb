# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Missions
        class Runs
          # @return [Telnyx::Resources::AI::Missions::Runs::Events]
          attr_reader :events

          # @return [Telnyx::Resources::AI::Missions::Runs::Plan]
          attr_reader :plan

          # @return [Telnyx::Resources::AI::Missions::Runs::TelnyxAgents]
          attr_reader :telnyx_agents

          # Start a new run for a mission
          #
          # @overload create(mission_id, input: nil, metadata: nil, request_options: {})
          #
          # @param mission_id [String]
          # @param input [Hash{Symbol=>Object}]
          # @param metadata [Hash{Symbol=>Object}]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Missions::RunCreateResponse]
          #
          # @see Telnyx::Models::AI::Missions::RunCreateParams
          def create(mission_id, params = {})
            parsed, options = Telnyx::AI::Missions::RunCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["ai/missions/%1$s/runs", mission_id],
              body: parsed,
              model: Telnyx::Models::AI::Missions::RunCreateResponse,
              options: options
            )
          end

          # Get details of a specific run
          #
          # @overload retrieve(run_id, mission_id:, request_options: {})
          #
          # @param run_id [String]
          # @param mission_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Missions::RunRetrieveResponse]
          #
          # @see Telnyx::Models::AI::Missions::RunRetrieveParams
          def retrieve(run_id, params)
            parsed, options = Telnyx::AI::Missions::RunRetrieveParams.dump_request(params)
            mission_id =
              parsed.delete(:mission_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["ai/missions/%1$s/runs/%2$s", mission_id, run_id],
              model: Telnyx::Models::AI::Missions::RunRetrieveResponse,
              options: options
            )
          end

          # Update run status and/or result
          #
          # @overload update(run_id, mission_id:, error: nil, metadata: nil, result_payload: nil, result_summary: nil, status: nil, request_options: {})
          #
          # @param run_id [String] Path param
          #
          # @param mission_id [String] Path param
          #
          # @param error [String] Body param
          #
          # @param metadata [Hash{Symbol=>Object}] Body param
          #
          # @param result_payload [Hash{Symbol=>Object}] Body param
          #
          # @param result_summary [String] Body param
          #
          # @param status [Symbol, Telnyx::Models::AI::Missions::RunUpdateParams::Status] Body param
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Missions::RunUpdateResponse]
          #
          # @see Telnyx::Models::AI::Missions::RunUpdateParams
          def update(run_id, params)
            parsed, options = Telnyx::AI::Missions::RunUpdateParams.dump_request(params)
            mission_id =
              parsed.delete(:mission_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: ["ai/missions/%1$s/runs/%2$s", mission_id, run_id],
              body: parsed,
              model: Telnyx::Models::AI::Missions::RunUpdateResponse,
              options: options
            )
          end

          # List all runs for a specific mission
          #
          # @overload list(mission_id, page_number: nil, page_size: nil, status: nil, request_options: {})
          #
          # @param mission_id [String]
          #
          # @param page_number [Integer] Page number (1-based)
          #
          # @param page_size [Integer] Number of items per page
          #
          # @param status [String]
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AI::Missions::RunListResponse>]
          #
          # @see Telnyx::Models::AI::Missions::RunListParams
          def list(mission_id, params = {})
            parsed, options = Telnyx::AI::Missions::RunListParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["ai/missions/%1$s/runs", mission_id],
              query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
              page: Telnyx::Internal::DefaultFlatPagination,
              model: Telnyx::Models::AI::Missions::RunListResponse,
              options: options
            )
          end

          # Cancel a running or paused run
          #
          # @overload cancel_run(run_id, mission_id:, request_options: {})
          #
          # @param run_id [String]
          # @param mission_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Missions::RunCancelRunResponse]
          #
          # @see Telnyx::Models::AI::Missions::RunCancelRunParams
          def cancel_run(run_id, params)
            parsed, options = Telnyx::AI::Missions::RunCancelRunParams.dump_request(params)
            mission_id =
              parsed.delete(:mission_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["ai/missions/%1$s/runs/%2$s/cancel", mission_id, run_id],
              model: Telnyx::Models::AI::Missions::RunCancelRunResponse,
              options: options
            )
          end

          # List recent runs across all missions
          #
          # @overload list_runs(page_number: nil, page_size: nil, status: nil, request_options: {})
          #
          # @param page_number [Integer] Page number (1-based)
          #
          # @param page_size [Integer] Number of items per page
          #
          # @param status [String]
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AI::Missions::RunListRunsResponse>]
          #
          # @see Telnyx::Models::AI::Missions::RunListRunsParams
          def list_runs(params = {})
            parsed, options = Telnyx::AI::Missions::RunListRunsParams.dump_request(params)
            @client.request(
              method: :get,
              path: "ai/missions/runs",
              query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
              page: Telnyx::Internal::DefaultFlatPagination,
              model: Telnyx::Models::AI::Missions::RunListRunsResponse,
              options: options
            )
          end

          # Pause a running run
          #
          # @overload pause_run(run_id, mission_id:, request_options: {})
          #
          # @param run_id [String]
          # @param mission_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Missions::RunPauseRunResponse]
          #
          # @see Telnyx::Models::AI::Missions::RunPauseRunParams
          def pause_run(run_id, params)
            parsed, options = Telnyx::AI::Missions::RunPauseRunParams.dump_request(params)
            mission_id =
              parsed.delete(:mission_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["ai/missions/%1$s/runs/%2$s/pause", mission_id, run_id],
              model: Telnyx::Models::AI::Missions::RunPauseRunResponse,
              options: options
            )
          end

          # Resume a paused run
          #
          # @overload resume_run(run_id, mission_id:, request_options: {})
          #
          # @param run_id [String]
          # @param mission_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Missions::RunResumeRunResponse]
          #
          # @see Telnyx::Models::AI::Missions::RunResumeRunParams
          def resume_run(run_id, params)
            parsed, options = Telnyx::AI::Missions::RunResumeRunParams.dump_request(params)
            mission_id =
              parsed.delete(:mission_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["ai/missions/%1$s/runs/%2$s/resume", mission_id, run_id],
              model: Telnyx::Models::AI::Missions::RunResumeRunResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
            @events = Telnyx::Resources::AI::Missions::Runs::Events.new(client: client)
            @plan = Telnyx::Resources::AI::Missions::Runs::Plan.new(client: client)
            @telnyx_agents = Telnyx::Resources::AI::Missions::Runs::TelnyxAgents.new(client: client)
          end
        end
      end
    end
  end
end
