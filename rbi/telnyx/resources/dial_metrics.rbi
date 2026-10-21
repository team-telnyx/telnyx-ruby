# typed: strong

module Telnyx
  module Resources
    # Call information
    class DialMetrics
      # Returns dials-per-second (DPS) metrics for your account's outbound dials made
      # with the Call Control `Dial` command and TeXML, as time buckets with dial
      # counts, accepted and rejected dials, average and peak DPS, and the DPS limit in
      # force.
      #
      # The result has one record per region per bucket, ordered by `start_time` and
      # then `region`, newest first unless `sort=start_time`. Regions are never summed:
      # the DPS limit is enforced per region, so a cross-region total cannot be compared
      # with it.
      #
      # Only buckets that saw dials are returned. Treat a missing bucket as zero dials.
      #
      # Only complete 5-second windows are counted, and a window is counted about 15
      # seconds after it closes. The newest `granularity=second` record is therefore
      # your live DPS, about 20 seconds old. Request the last minute or two with
      # `sort=-start_time`; the first record of each `region` is that region's live rate
      # (`page[limit]=1` would hide every region but one). If no recent record exists,
      # the live rate is zero.
      #
      # Results are cursor paginated. Follow `meta.next`, or pass `meta.cursors.after`
      # as `page[after]`, until `meta.next` is absent. No total count is returned.
      #
      # This endpoint is in development and can change before general availability.
      sig do
        params(
          end_time: Time,
          granularity: Telnyx::DialMetricListParams::Granularity::OrSymbol,
          start_time: Time,
          page_after: String,
          page_limit: Integer,
          sort: Telnyx::DialMetricListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::CloudfsCursorPagination[
            Telnyx::Models::DialMetricListResponse
          ]
        )
      end
      def list(
        # Exclusive end of the range, ISO 8601. Must be after `start_time`. Buckets that
        # start before this time are returned.
        end_time:,
        # Bucket size. `second` returns 5-second buckets (the finest resolution) and is
        # kept for the last 48 hours. `minute` and `hour` are kept for the last 30 days.
        granularity:,
        # Inclusive start of the range, ISO 8601 (for example `2026-09-29T12:00:00.000Z`).
        # Buckets that start at or after this time are returned. Must not be older than
        # the retention window of the chosen `granularity`.
        start_time:,
        # Opaque cursor from `meta.cursors.after` of the previous page. Do not parse or
        # construct it. A cursor that matches no records returns an empty page whose
        # `meta.cursors.after` and `meta.cursors.before` both echo the given cursor.
        page_after: nil,
        # Maximum number of buckets per page. Values outside the range are clamped to
        # 1-10,000.
        page_limit: nil,
        # Sort order of the buckets by `start_time`. `-start_time` (default) returns the
        # newest first, `start_time` the oldest first. `region` follows the same direction
        # for buckets with the same `start_time`. To read the live rate, use
        # `granularity=second` and `sort=-start_time`, then take the first record of each
        # `region`.
        sort: nil,
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
