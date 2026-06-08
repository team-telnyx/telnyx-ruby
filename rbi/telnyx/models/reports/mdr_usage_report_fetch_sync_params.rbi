# typed: strong

module Telnyx
  module Models
    module Reports
      class MdrUsageReportFetchSyncParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Reports::MdrUsageReportFetchSyncParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Type of aggregation to apply to the results.
        sig do
          returns(
            Telnyx::Reports::MdrUsageReportFetchSyncParams::AggregationType::OrSymbol
          )
        end
        attr_accessor :aggregation_type

        # End of the date range filter (inclusive, ISO 8601).
        sig { returns(T.nilable(Time)) }
        attr_reader :end_date

        sig { params(end_date: Time).void }
        attr_writer :end_date

        # Filter results by profile.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :profiles

        sig { params(profiles: T::Array[String]).void }
        attr_writer :profiles

        # Start of the date range filter (inclusive, ISO 8601).
        sig { returns(T.nilable(Time)) }
        attr_reader :start_date

        sig { params(start_date: Time).void }
        attr_writer :start_date

        sig do
          params(
            aggregation_type:
              Telnyx::Reports::MdrUsageReportFetchSyncParams::AggregationType::OrSymbol,
            end_date: Time,
            profiles: T::Array[String],
            start_date: Time,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Type of aggregation to apply to the results.
          aggregation_type:,
          # End of the date range filter (inclusive, ISO 8601).
          end_date: nil,
          # Filter results by profile.
          profiles: nil,
          # Start of the date range filter (inclusive, ISO 8601).
          start_date: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              aggregation_type:
                Telnyx::Reports::MdrUsageReportFetchSyncParams::AggregationType::OrSymbol,
              end_date: Time,
              profiles: T::Array[String],
              start_date: Time,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Type of aggregation to apply to the results.
        module AggregationType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Reports::MdrUsageReportFetchSyncParams::AggregationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NO_AGGREGATION =
            T.let(
              :NO_AGGREGATION,
              Telnyx::Reports::MdrUsageReportFetchSyncParams::AggregationType::TaggedSymbol
            )
          PROFILE =
            T.let(
              :PROFILE,
              Telnyx::Reports::MdrUsageReportFetchSyncParams::AggregationType::TaggedSymbol
            )
          TAGS =
            T.let(
              :TAGS,
              Telnyx::Reports::MdrUsageReportFetchSyncParams::AggregationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Reports::MdrUsageReportFetchSyncParams::AggregationType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
