# frozen_string_literal: true

module Telnyx
  module Resources
    # Call information
    class DialMetrics
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::DialMetricListParams} for more details.
      #
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
      #
      # @overload list(end_time:, granularity:, start_time:, page_after: nil, page_limit: nil, sort: nil, request_options: {})
      #
      # @param end_time [Time] Exclusive end of the range, ISO 8601. Must be after `start_time`. Buckets that s
      #
      # @param granularity [Symbol, Telnyx::Models::DialMetricListParams::Granularity] Bucket size. `second` returns 5-second buckets (the finest resolution) and is ke
      #
      # @param start_time [Time] Inclusive start of the range, ISO 8601 (for example `2026-09-29T12:00:00.000Z`).
      #
      # @param page_after [String] Opaque cursor from `meta.cursors.after` of the previous page. Do not parse or co
      #
      # @param page_limit [Integer] Maximum number of buckets per page. Values outside the range are clamped to 1-10
      #
      # @param sort [Symbol, Telnyx::Models::DialMetricListParams::Sort] Sort order of the buckets by `start_time`. `-start_time` (default) returns the n
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::CloudfsCursorPagination<Telnyx::Models::DialMetricListResponse>]
      #
      # @see Telnyx::Models::DialMetricListParams
      def list(params)
        parsed, options = Telnyx::DialMetricListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "dial_metrics",
          query: query.transform_keys(page_after: "page[after]", page_limit: "page[limit]"),
          page: Telnyx::Internal::CloudfsCursorPagination,
          model: Telnyx::Models::DialMetricListResponse,
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
