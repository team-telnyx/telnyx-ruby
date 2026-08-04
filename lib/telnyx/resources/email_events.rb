# frozen_string_literal: true

module Telnyx
  module Resources
    # Retrieve account-level email events and event statistics.
    class EmailEvents
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EmailEventListParams} for more details.
      #
      # Lists account-level email events sorted oldest first by
      # `occurred_at asc, id asc`.
      #
      # @overload list(email_id: nil, event_type: nil, from: nil, page_cursor: nil, page_size: nil, to: nil, request_options: {})
      #
      # @param email_id [String] Filter events for a specific email message UUID. Invalid UUID values are silentl
      #
      # @param event_type [String, Array<String>] Comma-separated list of event types to include. Also accepts repeated query para
      #
      # @param from [Time] Inclusive ISO 8601 start timestamp. Defaults to 30 days ago when omitted.
      #
      # @param page_cursor [String] Opaque URL-safe Base64 cursor returned by a previous list response.
      #
      # @param page_size [Integer] Number of results to return. Defaults to 25; maximum is 100. Invalid values are
      #
      # @param to [Time] Inclusive ISO 8601 end timestamp. When `from` is provided without `to`, defaults
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailEventListResponse]
      #
      # @see Telnyx::Models::EmailEventListParams
      def list(params = {})
        parsed, options = Telnyx::EmailEventListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "email_events",
          query: query,
          model: Telnyx::Models::EmailEventListResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EmailEventRetrieveStatsParams} for more details.
      #
      # Returns counts and rates for email events over a time range. The default start
      # time is 30 days ago.
      #
      # @overload retrieve_stats(from: nil, to: nil, request_options: {})
      #
      # @param from [Time] Inclusive ISO 8601 start timestamp. Defaults to 30 days ago when omitted.
      #
      # @param to [Time] Inclusive ISO 8601 end timestamp. When `from` is provided without `to`, defaults
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailEventRetrieveStatsResponse]
      #
      # @see Telnyx::Models::EmailEventRetrieveStatsParams
      def retrieve_stats(params = {})
        parsed, options = Telnyx::EmailEventRetrieveStatsParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "email_events/stats",
          query: query,
          model: Telnyx::Models::EmailEventRetrieveStatsResponse,
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
