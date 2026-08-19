# typed: strong

module Telnyx
  module Resources
    class AI
      class Missions
        class Runs
          class Events
            # Returns a paginated list of events logged for the specified run, filterable by
            # event type, plan step, and agent, so you can reconstruct exactly what happened
            # during execution.
            sig do
              params(
                run_id: String,
                mission_id: String,
                agent_id: String,
                page_number: Integer,
                page_size: Integer,
                step_id: String,
                type: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Internal::DefaultFlatPagination[
                  Telnyx::AI::Missions::Runs::EventData
                ]
              )
            end
            def list(
              # Path param: Unique identifier of the run.
              run_id,
              # Path param: Unique identifier of the mission.
              mission_id:,
              # Query param: Filter results by agent id.
              agent_id: nil,
              # Query param: Page number (1-based)
              page_number: nil,
              # Query param: Number of items per page
              page_size: nil,
              # Query param: Filter results by step id.
              step_id: nil,
              # Query param: Filter results by type.
              type: nil,
              request_options: {}
            )
            end

            # Returns the details of a single event logged for the specified run, including
            # its type and payload.
            sig do
              params(
                event_id: String,
                mission_id: String,
                run_id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(Telnyx::AI::Missions::Runs::EventResponse)
            end
            def get_event_details(
              # Unique identifier of the event.
              event_id,
              # Unique identifier of the mission.
              mission_id:,
              # Unique identifier of the run.
              run_id:,
              request_options: {}
            )
            end

            # Logs a new event against the specified run and returns the created event. Events
            # form the run's audit trail and can reference a plan step or agent.
            sig do
              params(
                run_id: String,
                mission_id: String,
                summary: String,
                type: Telnyx::AI::Missions::Runs::EventType::OrSymbol,
                agent_id: String,
                idempotency_key: String,
                payload: T::Hash[Symbol, T.anything],
                step_id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(Telnyx::AI::Missions::Runs::EventResponse)
            end
            def log(
              # Path param: Unique identifier of the run.
              run_id,
              # Path param: Unique identifier of the mission.
              mission_id:,
              # Body param
              summary:,
              # Body param
              type:,
              # Body param
              agent_id: nil,
              # Body param: Prevents duplicate events on retry
              idempotency_key: nil,
              # Body param
              payload: nil,
              # Body param
              step_id: nil,
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
