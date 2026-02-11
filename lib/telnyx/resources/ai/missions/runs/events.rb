# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Missions
        class Runs
          class Events
            # List events for a run (paginated)
            #
            # @overload list(run_id, mission_id:, agent_id: nil, page_number: nil, page_size: nil, step_id: nil, type: nil, request_options: {})
            #
            # @param run_id [String] Path param
            #
            # @param mission_id [String] Path param
            #
            # @param agent_id [String] Query param
            #
            # @param page_number [Integer] Query param: Page number (1-based)
            #
            # @param page_size [Integer] Query param: Number of items per page
            #
            # @param step_id [String] Query param
            #
            # @param type [String] Query param
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AI::Missions::Runs::EventListResponse>]
            #
            # @see Telnyx::Models::AI::Missions::Runs::EventListParams
            def list(run_id, params)
              parsed, options = Telnyx::AI::Missions::Runs::EventListParams.dump_request(params)
              mission_id =
                parsed.delete(:mission_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :get,
                path: ["ai/missions/%1$s/runs/%2$s/events", mission_id, run_id],
                query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
                page: Telnyx::Internal::DefaultFlatPagination,
                model: Telnyx::Models::AI::Missions::Runs::EventListResponse,
                options: options
              )
            end

            # Get details of a specific event
            #
            # @overload get_event_details(event_id, mission_id:, run_id:, request_options: {})
            #
            # @param event_id [String]
            # @param mission_id [String]
            # @param run_id [String]
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::AI::Missions::Runs::EventGetEventDetailsResponse]
            #
            # @see Telnyx::Models::AI::Missions::Runs::EventGetEventDetailsParams
            def get_event_details(event_id, params)
              parsed, options = Telnyx::AI::Missions::Runs::EventGetEventDetailsParams.dump_request(params)
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
                path: ["ai/missions/%1$s/runs/%2$s/events/%3$s", mission_id, run_id, event_id],
                model: Telnyx::Models::AI::Missions::Runs::EventGetEventDetailsResponse,
                options: options
              )
            end

            # Log an event for a run
            #
            # @overload log(run_id, mission_id:, summary:, type:, agent_id: nil, idempotency_key: nil, payload: nil, step_id: nil, request_options: {})
            #
            # @param run_id [String] Path param
            #
            # @param mission_id [String] Path param
            #
            # @param summary [String] Body param
            #
            # @param type [Symbol, Telnyx::Models::AI::Missions::Runs::EventLogParams::Type] Body param
            #
            # @param agent_id [String] Body param
            #
            # @param idempotency_key [String] Body param: Prevents duplicate events on retry
            #
            # @param payload [Hash{Symbol=>Object}] Body param
            #
            # @param step_id [String] Body param
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::AI::Missions::Runs::EventLogResponse]
            #
            # @see Telnyx::Models::AI::Missions::Runs::EventLogParams
            def log(run_id, params)
              parsed, options = Telnyx::AI::Missions::Runs::EventLogParams.dump_request(params)
              mission_id =
                parsed.delete(:mission_id) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: ["ai/missions/%1$s/runs/%2$s/events", mission_id, run_id],
                body: parsed,
                model: Telnyx::Models::AI::Missions::Runs::EventLogResponse,
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
