# frozen_string_literal: true

module Telnyx
  module Resources
    class MeetingBot
      # Connect calendars and manage automatic meeting joins.
      class Calendar
        # Browser redirect after calendar consent. Use the returned oauth_url rather than
        # constructing this request. Verified state identifies the connecting user.
        # Returns HTML for success, cancellation, or failure; no JSON error envelope or
        # bearer token is used.
        #
        # @overload retrieve_oauth_callback(code: nil, error: nil, state: nil, request_options: {})
        #
        # @param code [String] Authorization code supplied by the calendar provider.
        #
        # @param error [String] Authorization error supplied by the calendar provider, such as access_denied.
        #
        # @param state [String] Unmodified signed state from the authorization URL.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [String]
        #
        # @see Telnyx::Models::MeetingBot::CalendarRetrieveOAuthCallbackParams
        def retrieve_oauth_callback(params = {})
          parsed, options = Telnyx::MeetingBot::CalendarRetrieveOAuthCallbackParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "meeting_bot/calendar/oauth_callback",
            query: query,
            headers: {"accept" => "text/html"},
            model: String,
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
