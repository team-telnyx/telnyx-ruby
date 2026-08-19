# typed: strong

module Telnyx
  module Resources
    class AI
      class Missions
        class Runs
          sig { returns(Telnyx::Resources::AI::Missions::Runs::Events) }
          attr_reader :events

          sig { returns(Telnyx::Resources::AI::Missions::Runs::Plan) }
          attr_reader :plan

          sig { returns(Telnyx::Resources::AI::Missions::Runs::TelnyxAgents) }
          attr_reader :telnyx_agents

          # Starts a new run of the specified mission and returns the created run object.
          # Track its progress through the run detail, plan, and events endpoints.
          sig do
            params(
              mission_id: String,
              input: T::Hash[Symbol, T.anything],
              metadata: T::Hash[Symbol, T.anything],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Missions::MissionRunResponse)
          end
          def create(
            # Unique identifier of the mission.
            mission_id,
            input: nil,
            metadata: nil,
            request_options: {}
          )
          end

          # Returns the full details of a single run, including its current status. Use this
          # to poll an in-flight run or inspect the outcome of a completed one.
          sig do
            params(
              run_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Missions::MissionRunResponse)
          end
          def retrieve(
            # Unique identifier of the run.
            run_id,
            # Unique identifier of the mission.
            mission_id:,
            request_options: {}
          )
          end

          # Updates a run's status and/or result and returns the updated run object.
          # Typically used by executing agents to report progress or record the final
          # outcome.
          sig do
            params(
              run_id: String,
              mission_id: String,
              error: String,
              metadata: T::Hash[Symbol, T.anything],
              result_payload: T::Hash[Symbol, T.anything],
              result_summary: String,
              status: Telnyx::AI::Missions::RunStatus::OrSymbol,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Missions::MissionRunResponse)
          end
          def update(
            # Path param: Unique identifier of the run.
            run_id,
            # Path param: Unique identifier of the mission.
            mission_id:,
            # Body param
            error: nil,
            # Body param
            metadata: nil,
            # Body param
            result_payload: nil,
            # Body param
            result_summary: nil,
            # Body param
            status: nil,
            request_options: {}
          )
          end

          # Returns a paginated list of runs for the specified mission, optionally filtered
          # by run status, so you can track the mission's execution history over time.
          sig do
            params(
              mission_id: String,
              page_number: Integer,
              page_size: Integer,
              status: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Internal::DefaultFlatPagination[
                Telnyx::AI::Missions::MissionRunData
              ]
            )
          end
          def list(
            # Unique identifier of the mission.
            mission_id,
            # Page number (1-based)
            page_number: nil,
            # Number of items per page
            page_size: nil,
            # Filter results by status.
            status: nil,
            request_options: {}
          )
          end

          # Cancels a running or paused run and returns the updated run object. A cancelled
          # run stops executing; start a new run to execute the mission again.
          sig do
            params(
              run_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Missions::MissionRunResponse)
          end
          def cancel_run(
            # Unique identifier of the run.
            run_id,
            # Unique identifier of the mission.
            mission_id:,
            request_options: {}
          )
          end

          # Returns a paginated list of recent runs across every mission in your
          # organization, optionally filtered by run status. Useful for monitoring overall
          # mission activity without querying each mission individually.
          sig do
            params(
              page_number: Integer,
              page_size: Integer,
              status: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Internal::DefaultFlatPagination[
                Telnyx::AI::Missions::MissionRunData
              ]
            )
          end
          def list_runs(
            # Page number (1-based)
            page_number: nil,
            # Number of items per page
            page_size: nil,
            # Filter results by status.
            status: nil,
            request_options: {}
          )
          end

          # Pauses a currently running run and returns the updated run object. Execution
          # halts until the run is resumed.
          sig do
            params(
              run_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Missions::MissionRunResponse)
          end
          def pause_run(
            # Unique identifier of the run.
            run_id,
            # Unique identifier of the mission.
            mission_id:,
            request_options: {}
          )
          end

          # Resumes a previously paused run and returns the updated run object, letting
          # execution continue from where it was paused.
          sig do
            params(
              run_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Missions::MissionRunResponse)
          end
          def resume_run(
            # Unique identifier of the run.
            run_id,
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
