# typed: strong

module Telnyx
  module Resources
    class AI
      class Missions
        class Runs
          class Events
            # List events for a run (paginated)
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
                  Telnyx::Models::AI::Missions::Runs::EventListResponse
                ]
              )
            end
            def list(
              # Path param
              run_id,
              # Path param
              mission_id:,
              # Query param
              agent_id: nil,
              # Query param: Page number (1-based)
              page_number: nil,
              # Query param: Number of items per page
              page_size: nil,
              # Query param
              step_id: nil,
              # Query param
              type: nil,
              request_options: {}
            )
            end

            # Get details of a specific event
            sig do
              params(
                event_id: String,
                mission_id: String,
                run_id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::AI::Missions::Runs::EventGetEventDetailsResponse
              )
            end
            def get_event_details(
              event_id,
              mission_id:,
              run_id:,
              request_options: {}
            )
            end

            # Log an event for a run
            sig do
              params(
                run_id: String,
                mission_id: String,
                summary: String,
                type:
                  Telnyx::AI::Missions::Runs::EventLogParams::Type::OrSymbol,
                agent_id: String,
                idempotency_key: String,
                payload: T::Hash[Symbol, T.anything],
                step_id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(Telnyx::Models::AI::Missions::Runs::EventLogResponse)
            end
            def log(
              # Path param
              run_id,
              # Path param
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
