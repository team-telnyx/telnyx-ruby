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

          # Start a new run for a mission
          sig do
            params(
              mission_id: String,
              input: T::Hash[Symbol, T.anything],
              metadata: T::Hash[Symbol, T.anything],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::AI::Missions::RunCreateResponse)
          end
          def create(mission_id, input: nil, metadata: nil, request_options: {})
          end

          # Get details of a specific run
          sig do
            params(
              run_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::AI::Missions::RunRetrieveResponse)
          end
          def retrieve(run_id, mission_id:, request_options: {})
          end

          # Update run status and/or result
          sig do
            params(
              run_id: String,
              mission_id: String,
              error: String,
              metadata: T::Hash[Symbol, T.anything],
              result_payload: T::Hash[Symbol, T.anything],
              result_summary: String,
              status: Telnyx::AI::Missions::RunUpdateParams::Status::OrSymbol,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::AI::Missions::RunUpdateResponse)
          end
          def update(
            # Path param
            run_id,
            # Path param
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

          # List all runs for a specific mission
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
            mission_id,
            # Page number (1-based)
            page_number: nil,
            # Number of items per page
            page_size: nil,
            status: nil,
            request_options: {}
          )
          end

          # Cancel a running or paused run
          sig do
            params(
              run_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::AI::Missions::RunCancelRunResponse)
          end
          def cancel_run(run_id, mission_id:, request_options: {})
          end

          # List recent runs across all missions
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
            status: nil,
            request_options: {}
          )
          end

          # Pause a running run
          sig do
            params(
              run_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::AI::Missions::RunPauseRunResponse)
          end
          def pause_run(run_id, mission_id:, request_options: {})
          end

          # Resume a paused run
          sig do
            params(
              run_id: String,
              mission_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::AI::Missions::RunResumeRunResponse)
          end
          def resume_run(run_id, mission_id:, request_options: {})
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
