# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Missions
        class Runs
          class Plan
            # Create the initial plan for a run
            #
            # @overload create(run_id, mission_id:, steps:, request_options: {})
            #
            # @param run_id [String] Path param
            #
            # @param mission_id [String] Path param
            #
            # @param steps [Array<Telnyx::Models::AI::Missions::Runs::PlanCreateParams::Step>] Body param
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::AI::Missions::Runs::PlanCreateResponse]
            #
            # @see Telnyx::Models::AI::Missions::Runs::PlanCreateParams
            def create(run_id, params)
              parsed, options = Telnyx::AI::Missions::Runs::PlanCreateParams.dump_request(params)
              mission_id =
                parsed.delete(:mission_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: ["ai/missions/%1$s/runs/%2$s/plan", mission_id, run_id],
                body: parsed,
                model: Telnyx::Models::AI::Missions::Runs::PlanCreateResponse,
                options: options
              )
            end

            # Get the plan (all steps) for a run
            #
            # @overload retrieve(run_id, mission_id:, request_options: {})
            #
            # @param run_id [String]
            # @param mission_id [String]
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::AI::Missions::Runs::PlanRetrieveResponse]
            #
            # @see Telnyx::Models::AI::Missions::Runs::PlanRetrieveParams
            def retrieve(run_id, params)
              parsed, options = Telnyx::AI::Missions::Runs::PlanRetrieveParams.dump_request(params)
              mission_id =
                parsed.delete(:mission_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :get,
                path: ["ai/missions/%1$s/runs/%2$s/plan", mission_id, run_id],
                model: Telnyx::Models::AI::Missions::Runs::PlanRetrieveResponse,
                options: options
              )
            end

            # Add one or more steps to an existing plan
            #
            # @overload add_steps_to_plan(run_id, mission_id:, steps:, request_options: {})
            #
            # @param run_id [String] Path param
            #
            # @param mission_id [String] Path param
            #
            # @param steps [Array<Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanParams::Step>] Body param
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse]
            #
            # @see Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanParams
            def add_steps_to_plan(run_id, params)
              parsed, options = Telnyx::AI::Missions::Runs::PlanAddStepsToPlanParams.dump_request(params)
              mission_id =
                parsed.delete(:mission_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: ["ai/missions/%1$s/runs/%2$s/plan/steps", mission_id, run_id],
                body: parsed,
                model: Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse,
                options: options
              )
            end

            # Get details of a specific plan step
            #
            # @overload get_step_details(step_id, mission_id:, run_id:, request_options: {})
            #
            # @param step_id [String]
            # @param mission_id [String]
            # @param run_id [String]
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::AI::Missions::Runs::PlanGetStepDetailsResponse]
            #
            # @see Telnyx::Models::AI::Missions::Runs::PlanGetStepDetailsParams
            def get_step_details(step_id, params)
              parsed, options = Telnyx::AI::Missions::Runs::PlanGetStepDetailsParams.dump_request(params)
              mission_id =
                parsed.delete(:mission_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              run_id =
                parsed.delete(:run_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :get,
                path: ["ai/missions/%1$s/runs/%2$s/plan/steps/%3$s", mission_id, run_id, step_id],
                model: Telnyx::Models::AI::Missions::Runs::PlanGetStepDetailsResponse,
                options: options
              )
            end

            # Update the status of a plan step
            #
            # @overload update_step(step_id, mission_id:, run_id:, metadata: nil, status: nil, request_options: {})
            #
            # @param step_id [String] Path param
            #
            # @param mission_id [String] Path param
            #
            # @param run_id [String] Path param
            #
            # @param metadata [Hash{Symbol=>Object}] Body param
            #
            # @param status [Symbol, Telnyx::Models::AI::Missions::Runs::PlanUpdateStepParams::Status] Body param
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::AI::Missions::Runs::PlanUpdateStepResponse]
            #
            # @see Telnyx::Models::AI::Missions::Runs::PlanUpdateStepParams
            def update_step(step_id, params)
              parsed, options = Telnyx::AI::Missions::Runs::PlanUpdateStepParams.dump_request(params)
              mission_id =
                parsed.delete(:mission_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              run_id =
                parsed.delete(:run_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :patch,
                path: ["ai/missions/%1$s/runs/%2$s/plan/steps/%3$s", mission_id, run_id, step_id],
                body: parsed,
                model: Telnyx::Models::AI::Missions::Runs::PlanUpdateStepResponse,
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
