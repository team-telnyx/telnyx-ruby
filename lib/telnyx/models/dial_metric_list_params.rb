# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::DialMetrics#list
    class DialMetricListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute end_time
      #   Exclusive end of the range, ISO 8601. Must be after `start_time`. Buckets that
      #   start before this time are returned.
      #
      #   @return [Time]
      required :end_time, Time

      # @!attribute granularity
      #   Bucket size. `second` returns 5-second buckets (the finest resolution) and is
      #   kept for the last 48 hours. `minute` and `hour` are kept for the last 30 days.
      #
      #   @return [Symbol, Telnyx::Models::DialMetricListParams::Granularity]
      required :granularity, enum: -> { Telnyx::DialMetricListParams::Granularity }

      # @!attribute start_time
      #   Inclusive start of the range, ISO 8601 (for example `2026-09-29T12:00:00.000Z`).
      #   Buckets that start at or after this time are returned. A `start_time` older than
      #   the retention window of the chosen `granularity` is moved forward to the start
      #   of that window, and `meta.start_time` returns the start actually used.
      #
      #   @return [Time]
      required :start_time, Time

      # @!attribute page_after
      #   Opaque cursor from `meta.cursors.after` of the previous page. Do not parse or
      #   construct it. A cursor that matches no records returns an empty page whose
      #   `meta.cursors.after` and `meta.cursors.before` both echo the given cursor.
      #
      #   @return [String, nil]
      optional :page_after, String

      # @!attribute page_limit
      #   Maximum number of buckets per page. Values outside the range are clamped to
      #   1-10,000.
      #
      #   @return [Integer, nil]
      optional :page_limit, Integer

      # @!attribute sort
      #   Sort order of the buckets by `start_time`. `-start_time` (default) returns the
      #   newest first, `start_time` the oldest first. `region` follows the same direction
      #   for buckets with the same `start_time`. To read the live rate, use
      #   `granularity=second` and `sort=-start_time`, then take the first record of each
      #   `region`.
      #
      #   @return [Symbol, Telnyx::Models::DialMetricListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::DialMetricListParams::Sort }

      # @!method initialize(end_time:, granularity:, start_time:, page_after: nil, page_limit: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DialMetricListParams} for more details.
      #
      #   @param end_time [Time] Exclusive end of the range, ISO 8601. Must be after `start_time`. Buckets that s
      #
      #   @param granularity [Symbol, Telnyx::Models::DialMetricListParams::Granularity] Bucket size. `second` returns 5-second buckets (the finest resolution) and is ke
      #
      #   @param start_time [Time] Inclusive start of the range, ISO 8601 (for example `2026-09-29T12:00:00.000Z`).
      #
      #   @param page_after [String] Opaque cursor from `meta.cursors.after` of the previous page. Do not parse or co
      #
      #   @param page_limit [Integer] Maximum number of buckets per page. Values outside the range are clamped to 1-10
      #
      #   @param sort [Symbol, Telnyx::Models::DialMetricListParams::Sort] Sort order of the buckets by `start_time`. `-start_time` (default) returns the n
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Bucket size. `second` returns 5-second buckets (the finest resolution) and is
      # kept for the last 48 hours. `minute` and `hour` are kept for the last 30 days.
      module Granularity
        extend Telnyx::Internal::Type::Enum

        SECOND = :second
        MINUTE = :minute
        HOUR = :hour

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sort order of the buckets by `start_time`. `-start_time` (default) returns the
      # newest first, `start_time` the oldest first. `region` follows the same direction
      # for buckets with the same `start_time`. To read the live rate, use
      # `granularity=second` and `sort=-start_time`, then take the first record of each
      # `region`.
      module Sort
        extend Telnyx::Internal::Type::Enum

        MINUS_START_TIME = :"-start_time"
        START_TIME = :start_time

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
