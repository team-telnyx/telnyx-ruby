# typed: strong

module Telnyx
  module Resources
    # Retrieve account-level email events and event statistics.
    class EmailEvents
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
      sig do
        params(
          email_id: String,
          event_type: Telnyx::EmailEventListParams::EventType::Variants,
          from: Time,
          page_size: Integer,
          page_cursor: String,
          to: Time,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::EmailEventListResponse)
      end
      def list(
        # Filter events for a specific email message UUID. Invalid UUID values are
        # silently ignored (no filter applied).
        email_id: nil,
        # Comma-separated list of event types to include. Also accepts repeated query
        # parameters (e.g. event_type=delivered&event_type=bounced). Unknown values return
        # no matches.
        #
        # Dual-name compatibility: values are accepted bare or `email.`-prefixed. A legacy
        # value keeps matching the rows it matched pre-rename — no widening: `failed` also
        # matches the rows that now store the canonical names of the outcomes it covered
        # (`gw_reject`, `injection_timeout`, `expired`); `bounced` matches stored
        # `bounced` rows only (recipient-scoped Expirations stored `failed` pre-rename and
        # never matched `bounced`, so `expired` is deliberately not a `bounced`
        # expansion). A canonical value matches its own rows plus legacy rows whose
        # recorded payload evidence proves that outcome (`expired` also surfaces legacy
        # `bounced` rows with `bounce_category: transient`). The additive
        # `canonical_event_type` field in each response row names the canonical outcome.
        event_type: nil,
        # Inclusive ISO 8601 start timestamp. Defaults to 30 days ago when omitted.
        from: nil,
        # Number of results to return. Defaults to 25; maximum is 100. Invalid values are
        # clamped to the valid range.
        page_size: nil,
        # Opaque URL-safe Base64 cursor returned by a previous event list response. The
        # legacy `page[after]` and flat `page_cursor` forms are also accepted.
        page_cursor: nil,
        # Inclusive ISO 8601 end timestamp. When `from` is provided without `to`, defaults
        # to `from + 30 days`.
        to: nil,
        request_options: {}
      )
      end

      # Returns counts and rates for email events over a time range. The default start
      # time is 30 days ago.
      sig do
        params(
          from: Time,
          to: Time,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::EmailEventRetrieveStatsResponse)
      end
      def retrieve_stats(
        # Inclusive ISO 8601 start timestamp. Defaults to 30 days ago when omitted.
        from: nil,
        # Inclusive ISO 8601 end timestamp. When `from` is provided without `to`, defaults
        # to `from + 30 days`.
        to: nil,
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
