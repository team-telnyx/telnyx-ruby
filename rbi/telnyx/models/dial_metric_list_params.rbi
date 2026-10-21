# typed: strong

module Telnyx
  module Models
    class DialMetricListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::DialMetricListParams, Telnyx::Internal::AnyHash)
        end

      # Exclusive end of the range, ISO 8601. Must be after `start_time`. Buckets that
      # start before this time are returned.
      sig { returns(Time) }
      attr_accessor :end_time

      # Bucket size. `second` returns 5-second buckets (the finest resolution) and is
      # kept for the last 48 hours. `minute` and `hour` are kept for the last 30 days.
      sig { returns(Telnyx::DialMetricListParams::Granularity::OrSymbol) }
      attr_accessor :granularity

      # Inclusive start of the range, ISO 8601 (for example `2026-09-29T12:00:00.000Z`).
      # Buckets that start at or after this time are returned. A `start_time` older than
      # the retention window of the chosen `granularity` is moved forward to the start
      # of that window, and `meta.start_time` returns the start actually used.
      sig { returns(Time) }
      attr_accessor :start_time

      # Opaque cursor from `meta.cursors.after` of the previous page. Do not parse or
      # construct it. A cursor that matches no records returns an empty page whose
      # `meta.cursors.after` and `meta.cursors.before` both echo the given cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :page_after

      sig { params(page_after: String).void }
      attr_writer :page_after

      # Maximum number of buckets per page. Values outside the range are clamped to
      # 1-10,000.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_limit

      sig { params(page_limit: Integer).void }
      attr_writer :page_limit

      # Sort order of the buckets by `start_time`. `-start_time` (default) returns the
      # newest first, `start_time` the oldest first. `region` follows the same direction
      # for buckets with the same `start_time`. To read the live rate, use
      # `granularity=second` and `sort=-start_time`, then take the first record of each
      # `region`.
      sig { returns(T.nilable(Telnyx::DialMetricListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Telnyx::DialMetricListParams::Sort::OrSymbol).void }
      attr_writer :sort

      sig do
        params(
          end_time: Time,
          granularity: Telnyx::DialMetricListParams::Granularity::OrSymbol,
          start_time: Time,
          page_after: String,
          page_limit: Integer,
          sort: Telnyx::DialMetricListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Exclusive end of the range, ISO 8601. Must be after `start_time`. Buckets that
        # start before this time are returned.
        end_time:,
        # Bucket size. `second` returns 5-second buckets (the finest resolution) and is
        # kept for the last 48 hours. `minute` and `hour` are kept for the last 30 days.
        granularity:,
        # Inclusive start of the range, ISO 8601 (for example `2026-09-29T12:00:00.000Z`).
        # Buckets that start at or after this time are returned. A `start_time` older than
        # the retention window of the chosen `granularity` is moved forward to the start
        # of that window, and `meta.start_time` returns the start actually used.
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

      sig do
        override.returns(
          {
            end_time: Time,
            granularity: Telnyx::DialMetricListParams::Granularity::OrSymbol,
            start_time: Time,
            page_after: String,
            page_limit: Integer,
            sort: Telnyx::DialMetricListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Bucket size. `second` returns 5-second buckets (the finest resolution) and is
      # kept for the last 48 hours. `minute` and `hour` are kept for the last 30 days.
      module Granularity
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::DialMetricListParams::Granularity)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SECOND =
          T.let(
            :second,
            Telnyx::DialMetricListParams::Granularity::TaggedSymbol
          )
        MINUTE =
          T.let(
            :minute,
            Telnyx::DialMetricListParams::Granularity::TaggedSymbol
          )
        HOUR =
          T.let(:hour, Telnyx::DialMetricListParams::Granularity::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::DialMetricListParams::Granularity::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sort order of the buckets by `start_time`. `-start_time` (default) returns the
      # newest first, `start_time` the oldest first. `region` follows the same direction
      # for buckets with the same `start_time`. To read the live rate, use
      # `granularity=second` and `sort=-start_time`, then take the first record of each
      # `region`.
      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::DialMetricListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MINUS_START_TIME =
          T.let(
            :"-start_time",
            Telnyx::DialMetricListParams::Sort::TaggedSymbol
          )
        START_TIME =
          T.let(:start_time, Telnyx::DialMetricListParams::Sort::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::DialMetricListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
