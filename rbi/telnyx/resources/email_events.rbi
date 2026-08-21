# typed: strong

module Telnyx
  module Resources
    # Retrieve account-level email events and event statistics.
    class EmailEvents
      # Lists account-level email events sorted oldest first by
      # `occurred_at asc, id asc`.
      sig do
        params(
          email_id: String,
          event_type: Telnyx::EmailEventListParams::EventType::Variants,
          from: Time,
          page_cursor: String,
          page_size: Integer,
          to: Time,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::EmailCursorPagination[
            Telnyx::Models::EmailEventListResponse
          ]
        )
      end
      def list(
        # Filter events for a specific email message UUID. Invalid UUID values are
        # silently ignored (no filter applied).
        email_id: nil,
        # Comma-separated list of event types to include. Also accepts repeated query
        # parameters (e.g. event_type=delivered&event_type=bounced). Unknown values return
        # no matches.
        event_type: nil,
        # Inclusive ISO 8601 start timestamp. Defaults to 30 days ago when omitted.
        from: nil,
        # Opaque URL-safe Base64 cursor returned by a previous list response.
        page_cursor: nil,
        # Number of results to return. Defaults to 25; maximum is 100. Invalid values are
        # clamped to the valid range.
        page_size: nil,
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
