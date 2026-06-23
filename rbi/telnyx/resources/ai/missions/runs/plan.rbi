# typed: strong

module Telnyx
  module Resources
    class AI
      class Missions
        class Runs
          class Plan
            # Create the initial plan for a run
            sig do
              params(
                run_id: String,
                mission_id: String,
                steps:
                  T::Array[
                    Telnyx::AI::Missions::Runs::CreatePlanStepRequest::OrHash
                  ],
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(Telnyx::AI::Missions::Runs::PlanStepsCreatedResponse)
            end
            def create(
              # Path param: Unique identifier of the run.
              run_id,
              # Path param: Unique identifier of the mission.
              mission_id:,
              # Body param
              steps:,
              request_options: {}
            )
            end

            # Get the plan (all steps) for a run
            sig do
              params(
                run_id: String,
                mission_id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::AI::Missions::Runs::PlanRetrieveResponse
              )
            end
            def retrieve(
              # Unique identifier of the run.
              run_id,
              # Unique identifier of the mission.
              mission_id:,
              request_options: {}
            )
            end

            # Add one or more steps to an existing plan
            sig do
              params(
                run_id: String,
                mission_id: String,
                steps:
                  T::Array[
                    Telnyx::AI::Missions::Runs::CreatePlanStepRequest::OrHash
                  ],
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(Telnyx::AI::Missions::Runs::PlanStepsCreatedResponse)
            end
            def add_steps_to_plan(
              # Path param: Unique identifier of the run.
              run_id,
              # Path param: Unique identifier of the mission.
              mission_id:,
              # Body param
              steps:,
              request_options: {}
            )
            end

            # Get details of a specific plan step
            sig do
              params(
                step_id: String,
                mission_id: String,
                run_id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(Telnyx::AI::Missions::Runs::PlanStepResponse)
            end
            def get_step_details(
              # Unique identifier of the step.
              step_id,
              # Unique identifier of the mission.
              mission_id:,
              # Unique identifier of the run.
              run_id:,
              request_options: {}
            )
            end

            # Update the status of a plan step
            sig do
              params(
                step_id: String,
                mission_id: String,
                run_id: String,
                metadata: T::Hash[Symbol, T.anything],
                status: Telnyx::AI::Missions::Runs::StepStatus::OrSymbol,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(Telnyx::AI::Missions::Runs::PlanStepResponse)
            end
            def update_step(
              # Path param: Unique identifier of the step.
              step_id,
              # Path param: Unique identifier of the mission.
              mission_id:,
              # Path param: Unique identifier of the run.
              run_id:,
              # Body param
              metadata: nil,
              # Body param
              status: nil,
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
end
