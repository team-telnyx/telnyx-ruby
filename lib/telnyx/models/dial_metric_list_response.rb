# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::DialMetrics#list
    class DialMetricListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute average_dps
      #   `dials.total` divided by the bucket duration in seconds, rounded to 4 decimal
      #   places. Counts every dial attempt, rejected ones included.
      #
      #   @return [Float, nil]
      optional :average_dps, Float

      # @!attribute dials
      #   Dial attempt counts in the bucket.
      #
      #   @return [Telnyx::Models::DialMetricListResponse::Dials, nil]
      optional :dials, -> { Telnyx::Models::DialMetricListResponse::Dials }

      # @!attribute dps_limit
      #   DPS limit in force during the busiest 5-second window, so it compares directly
      #   with `peak_dps`. `null` means unlimited. Enforcement near the limit is
      #   approximate; `dials.rejected.dps_limit` is the authoritative signal that the
      #   limit was reached.
      #
      #   @return [Integer, nil]
      optional :dps_limit, Integer, nil?: true

      # @!attribute end_time
      #   End of the bucket (exclusive), UTC. Five seconds, one minute or one hour after
      #   `start_time`, depending on `granularity`.
      #
      #   @return [Time, nil]
      optional :end_time, Time

      # @!attribute peak_dps
      #   Dials per second, rounded to 4 decimal places, in the busiest 5-second window of
      #   the bucket, summed across all call-processing nodes of the region. Counts every
      #   dial attempt, rejected ones included, so `peak_dps` above `dps_limit` is
      #   expected when dials were rejected. For `granularity=second` it equals
      #   `average_dps`.
      #
      #   @return [Float, nil]
      optional :peak_dps, Float

      # @!attribute record_type
      #
      #   @return [Symbol, Telnyx::Models::DialMetricListResponse::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::Models::DialMetricListResponse::RecordType }

      # @!attribute region
      #   Region where the dials were handled. Current values are `us`, `eu`, `australia`,
      #   `middle_east`, `canada` and `india`. New values can be added, so clients must
      #   tolerate values not listed here. Buckets of different regions are separate
      #   records.
      #
      #   @return [String, nil]
      optional :region, String

      # @!attribute start_time
      #   Start of the bucket (inclusive), UTC.
      #
      #   @return [Time, nil]
      optional :start_time, Time

      # @!method initialize(average_dps: nil, dials: nil, dps_limit: nil, end_time: nil, peak_dps: nil, record_type: nil, region: nil, start_time: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DialMetricListResponse} for more details.
      #
      #   Dial counts and rates for one region in one time bucket. One record per region
      #   per bucket.
      #
      #   @param average_dps [Float] `dials.total` divided by the bucket duration in seconds, rounded to 4 decimal pl
      #
      #   @param dials [Telnyx::Models::DialMetricListResponse::Dials] Dial attempt counts in the bucket.
      #
      #   @param dps_limit [Integer, nil] DPS limit in force during the busiest 5-second window, so it compares directly w
      #
      #   @param end_time [Time] End of the bucket (exclusive), UTC. Five seconds, one minute or one hour after `
      #
      #   @param peak_dps [Float] Dials per second, rounded to 4 decimal places, in the busiest 5-second window of
      #
      #   @param record_type [Symbol, Telnyx::Models::DialMetricListResponse::RecordType]
      #
      #   @param region [String] Region where the dials were handled. Current values are `us`, `eu`, `australia`,
      #
      #   @param start_time [Time] Start of the bucket (inclusive), UTC.

      # @see Telnyx::Models::DialMetricListResponse#dials
      class Dials < Telnyx::Internal::Type::BaseModel
        # @!attribute accepted
        #   Dial attempts that were not rejected by a limit.
        #
        #   @return [Integer, nil]
        optional :accepted, Integer

        # @!attribute rejected
        #   Dial attempts rejected by a limit.
        #
        #   @return [Telnyx::Models::DialMetricListResponse::Dials::Rejected, nil]
        optional :rejected, -> { Telnyx::Models::DialMetricListResponse::Dials::Rejected }

        # @!attribute total
        #   All dial attempts, rejected ones included: accepted plus every rejected count.
        #
        #   @return [Integer, nil]
        optional :total, Integer

        # @!method initialize(accepted: nil, rejected: nil, total: nil)
        #   Dial attempt counts in the bucket.
        #
        #   @param accepted [Integer] Dial attempts that were not rejected by a limit.
        #
        #   @param rejected [Telnyx::Models::DialMetricListResponse::Dials::Rejected] Dial attempts rejected by a limit.
        #
        #   @param total [Integer] All dial attempts, rejected ones included: accepted plus every rejected count.

        # @see Telnyx::Models::DialMetricListResponse::Dials#rejected
        class Rejected < Telnyx::Internal::Type::BaseModel
          # @!attribute daily_limit
          #   Rejected by a daily limit.
          #
          #   @return [Integer, nil]
          optional :daily_limit, Integer

          # @!attribute dps_limit
          #   Rejected by the dials-per-second limit.
          #
          #   @return [Integer, nil]
          optional :dps_limit, Integer

          # @!attribute hourly_limit
          #   Rejected by an hourly limit.
          #
          #   @return [Integer, nil]
          optional :hourly_limit, Integer

          # @!method initialize(daily_limit: nil, dps_limit: nil, hourly_limit: nil)
          #   Dial attempts rejected by a limit.
          #
          #   @param daily_limit [Integer] Rejected by a daily limit.
          #
          #   @param dps_limit [Integer] Rejected by the dials-per-second limit.
          #
          #   @param hourly_limit [Integer] Rejected by an hourly limit.
        end
      end

      # @see Telnyx::Models::DialMetricListResponse#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        DIAL_METRIC = :dial_metric

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
