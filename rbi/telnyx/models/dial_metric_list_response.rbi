# typed: strong

module Telnyx
  module Models
    class DialMetricListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::DialMetricListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # `dials.total` divided by the bucket duration in seconds, rounded to 4 decimal
      # places. Counts every dial attempt, rejected ones included.
      sig { returns(T.nilable(Float)) }
      attr_reader :average_dps

      sig { params(average_dps: Float).void }
      attr_writer :average_dps

      # Dial attempt counts in the bucket.
      sig { returns(T.nilable(Telnyx::Models::DialMetricListResponse::Dials)) }
      attr_reader :dials

      sig do
        params(
          dials: Telnyx::Models::DialMetricListResponse::Dials::OrHash
        ).void
      end
      attr_writer :dials

      # DPS limit in force during the busiest 5-second window, so it compares directly
      # with `peak_dps`. `null` means unlimited. Enforcement near the limit is
      # approximate; `dials.rejected.dps_limit` is the authoritative signal that the
      # limit was reached.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :dps_limit

      # End of the bucket (exclusive), UTC. Five seconds, one minute or one hour after
      # `start_time`, depending on `granularity`.
      sig { returns(T.nilable(Time)) }
      attr_reader :end_time

      sig { params(end_time: Time).void }
      attr_writer :end_time

      # Dials per second, rounded to 4 decimal places, in the busiest 5-second window of
      # the bucket, summed across all call-processing nodes of the region. Counts every
      # dial attempt, rejected ones included, so `peak_dps` above `dps_limit` is
      # expected when dials were rejected. For `granularity=second` it equals
      # `average_dps`.
      sig { returns(T.nilable(Float)) }
      attr_reader :peak_dps

      sig { params(peak_dps: Float).void }
      attr_writer :peak_dps

      sig do
        returns(
          T.nilable(
            Telnyx::Models::DialMetricListResponse::RecordType::TaggedSymbol
          )
        )
      end
      attr_reader :record_type

      sig do
        params(
          record_type:
            Telnyx::Models::DialMetricListResponse::RecordType::OrSymbol
        ).void
      end
      attr_writer :record_type

      # Region where the dials were handled. Current values are `us`, `eu`, `australia`,
      # `middle_east`, `canada` and `india`. New values can be added, so clients must
      # tolerate values not listed here. Buckets of different regions are separate
      # records.
      sig { returns(T.nilable(String)) }
      attr_reader :region

      sig { params(region: String).void }
      attr_writer :region

      # Start of the bucket (inclusive), UTC.
      sig { returns(T.nilable(Time)) }
      attr_reader :start_time

      sig { params(start_time: Time).void }
      attr_writer :start_time

      # Dial counts and rates for one region in one time bucket. One record per region
      # per bucket.
      sig do
        params(
          average_dps: Float,
          dials: Telnyx::Models::DialMetricListResponse::Dials::OrHash,
          dps_limit: T.nilable(Integer),
          end_time: Time,
          peak_dps: Float,
          record_type:
            Telnyx::Models::DialMetricListResponse::RecordType::OrSymbol,
          region: String,
          start_time: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # `dials.total` divided by the bucket duration in seconds, rounded to 4 decimal
        # places. Counts every dial attempt, rejected ones included.
        average_dps: nil,
        # Dial attempt counts in the bucket.
        dials: nil,
        # DPS limit in force during the busiest 5-second window, so it compares directly
        # with `peak_dps`. `null` means unlimited. Enforcement near the limit is
        # approximate; `dials.rejected.dps_limit` is the authoritative signal that the
        # limit was reached.
        dps_limit: nil,
        # End of the bucket (exclusive), UTC. Five seconds, one minute or one hour after
        # `start_time`, depending on `granularity`.
        end_time: nil,
        # Dials per second, rounded to 4 decimal places, in the busiest 5-second window of
        # the bucket, summed across all call-processing nodes of the region. Counts every
        # dial attempt, rejected ones included, so `peak_dps` above `dps_limit` is
        # expected when dials were rejected. For `granularity=second` it equals
        # `average_dps`.
        peak_dps: nil,
        record_type: nil,
        # Region where the dials were handled. Current values are `us`, `eu`, `australia`,
        # `middle_east`, `canada` and `india`. New values can be added, so clients must
        # tolerate values not listed here. Buckets of different regions are separate
        # records.
        region: nil,
        # Start of the bucket (inclusive), UTC.
        start_time: nil
      )
      end

      sig do
        override.returns(
          {
            average_dps: Float,
            dials: Telnyx::Models::DialMetricListResponse::Dials,
            dps_limit: T.nilable(Integer),
            end_time: Time,
            peak_dps: Float,
            record_type:
              Telnyx::Models::DialMetricListResponse::RecordType::TaggedSymbol,
            region: String,
            start_time: Time
          }
        )
      end
      def to_hash
      end

      class Dials < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::DialMetricListResponse::Dials,
              Telnyx::Internal::AnyHash
            )
          end

        # Dial attempts that were not rejected by a limit.
        sig { returns(T.nilable(Integer)) }
        attr_reader :accepted

        sig { params(accepted: Integer).void }
        attr_writer :accepted

        # Dial attempts rejected by a limit.
        sig do
          returns(
            T.nilable(Telnyx::Models::DialMetricListResponse::Dials::Rejected)
          )
        end
        attr_reader :rejected

        sig do
          params(
            rejected:
              Telnyx::Models::DialMetricListResponse::Dials::Rejected::OrHash
          ).void
        end
        attr_writer :rejected

        # All dial attempts, rejected ones included: accepted plus every rejected count.
        sig { returns(T.nilable(Integer)) }
        attr_reader :total

        sig { params(total: Integer).void }
        attr_writer :total

        # Dial attempt counts in the bucket.
        sig do
          params(
            accepted: Integer,
            rejected:
              Telnyx::Models::DialMetricListResponse::Dials::Rejected::OrHash,
            total: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Dial attempts that were not rejected by a limit.
          accepted: nil,
          # Dial attempts rejected by a limit.
          rejected: nil,
          # All dial attempts, rejected ones included: accepted plus every rejected count.
          total: nil
        )
        end

        sig do
          override.returns(
            {
              accepted: Integer,
              rejected: Telnyx::Models::DialMetricListResponse::Dials::Rejected,
              total: Integer
            }
          )
        end
        def to_hash
        end

        class Rejected < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::DialMetricListResponse::Dials::Rejected,
                Telnyx::Internal::AnyHash
              )
            end

          # Rejected by a daily limit.
          sig { returns(T.nilable(Integer)) }
          attr_reader :daily_limit

          sig { params(daily_limit: Integer).void }
          attr_writer :daily_limit

          # Rejected by the dials-per-second limit.
          sig { returns(T.nilable(Integer)) }
          attr_reader :dps_limit

          sig { params(dps_limit: Integer).void }
          attr_writer :dps_limit

          # Rejected by an hourly limit.
          sig { returns(T.nilable(Integer)) }
          attr_reader :hourly_limit

          sig { params(hourly_limit: Integer).void }
          attr_writer :hourly_limit

          # Dial attempts rejected by a limit.
          sig do
            params(
              daily_limit: Integer,
              dps_limit: Integer,
              hourly_limit: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Rejected by a daily limit.
            daily_limit: nil,
            # Rejected by the dials-per-second limit.
            dps_limit: nil,
            # Rejected by an hourly limit.
            hourly_limit: nil
          )
          end

          sig do
            override.returns(
              {
                daily_limit: Integer,
                dps_limit: Integer,
                hourly_limit: Integer
              }
            )
          end
          def to_hash
          end
        end
      end

      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::Models::DialMetricListResponse::RecordType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DIAL_METRIC =
          T.let(
            :dial_metric,
            Telnyx::Models::DialMetricListResponse::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::DialMetricListResponse::RecordType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
