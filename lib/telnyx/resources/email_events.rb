# frozen_string_literal: true

module Telnyx
  module Resources
    # Retrieve account-level email events and event statistics.
    class EmailEvents
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EmailEventListParams} for more details.
      #
      # Lists account-level email events sorted oldest first by
      # `occurred_at asc, id asc`. Each row contains a legacy email.-prefixed event_type
      # and an additive canonical_event_type. Gateway rejection renders email.failed
      # with canonical email.gw_reject; ambiguous injection timeout renders
      # email.injection_timeout in both; MTA expiration renders email.bounced with
      # canonical email.expired. Message-scoped queued, sending, sandbox, cancelled, and
      # daily_limit_exceeded rows fan out per durable recipient with stable derived IDs
      # matching webhook delivery. Scheduled is the cardinality exception: account
      # polling retains one message-scoped scheduled row with its stored event ID, while
      # scheduled webhook publication fans out per recipient with derived IDs; reconcile
      # scheduled events by message ID, event type, and occurrence time rather than
      # event UUID. Recipient-scoped stored rows retain their stored UUIDs across
      # polling and webhook delivery. Legacy names are derived from stored rows; an
      # AdminBounce row stored as failed renders email.failed in polling while its
      # webhook retains email.bounced, both with canonical email.failed.
      #
      # @overload list(email_id: nil, event_type: nil, from: nil, page_size: nil, page_cursor: nil, to: nil, request_options: {})
      #
      # @param email_id [String] Filter events for a specific email message UUID. Invalid UUID values are silentl
      #
      # @param event_type [String, Array<String>] Comma-separated list of event types to include. Also accepts repeated
      #
      # @param from [Time] Inclusive ISO 8601 start timestamp. Defaults to 30 days ago when omitted.
      #
      # @param page_size [Integer] Number of results to return. Defaults to 25; maximum is 100. Invalid values are
      #
      # @param page_cursor [String] Opaque URL-safe Base64 cursor returned by a previous event list response. The le
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
          query: query.transform_keys(page_cursor: "page[cursor]"),
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
