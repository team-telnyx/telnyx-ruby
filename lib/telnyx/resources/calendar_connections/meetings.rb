# frozen_string_literal: true

module Telnyx
  module Resources
    class CalendarConnections
      # Connect calendars and manage automatic meeting joins.
      class Meetings
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::CalendarConnections::MeetingUpdateParams} for more details.
        #
        # Set an individual meeting override: true opts in, false opts out, null follows
        # the connection policy. A supported meeting link is required. Changes re-evaluate
        # the meeting immediately; poll the linked session for its final lifecycle
        # outcome.
        #
        # @overload update(meeting_id, id:, bot_will_join:, request_options: {})
        #
        # @param meeting_id [String] Path param: Tracked meeting ID.
        #
        # @param id [String] Path param: Calendar connection ID.
        #
        # @param bot_will_join [Boolean, nil] Body param: True opts in, false opts out, null follows connection policy. A supp
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::CalendarConnections::MeetingUpdateResponse]
        #
        # @see Telnyx::Models::CalendarConnections::MeetingUpdateParams
        def update(meeting_id, params)
          parsed, options = Telnyx::CalendarConnections::MeetingUpdateParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["calendar_connections/%1$s/meetings/%2$s", id, meeting_id],
            body: parsed,
            model: Telnyx::Models::CalendarConnections::MeetingUpdateResponse,
            options: options
          )
        end

        # List tracked meetings in a window. Defaults from now through seven days from
        # now. from must not exceed to and the window must not exceed 31 days.
        # bot_will_join is the effective policy decision; check session_id and the linked
        # session status for actual attendance.
        #
        # @overload list(id, from: nil, to: nil, request_options: {})
        #
        # @param id [String] Calendar connection ID.
        #
        # @param from [Time] Window start; defaults to now.
        #
        # @param to [Time] Window end; defaults to seven days from now.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::CalendarConnections::MeetingListResponse]
        #
        # @see Telnyx::Models::CalendarConnections::MeetingListParams
        def list(id, params = {})
          parsed, options = Telnyx::CalendarConnections::MeetingListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["calendar_connections/%1$s/meetings", id],
            query: query,
            model: Telnyx::Models::CalendarConnections::MeetingListResponse,
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
