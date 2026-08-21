# typed: strong

module Telnyx
  module Resources
    class AI
      class Missions
        class Runs
          class Plan
            # Creates the initial plan for the specified run from the provided steps and
            # returns the created plan steps. Progress is subsequently reported by updating
            # individual steps.
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

            # Returns the plan for the specified run, including all plan steps and their
            # statuses, so you can see how the mission was decomposed and how far execution
            # has progressed.
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

            # Returns the details of a single plan step within a run's plan, including its
            # status.
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

            # Updates the status of a single plan step and returns the updated step. Typically
            # called by the executing agent as it works through the plan.
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
