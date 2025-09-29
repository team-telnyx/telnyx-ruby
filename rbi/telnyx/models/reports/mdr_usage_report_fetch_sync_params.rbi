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

        sig do
          returns(
            Telnyx::Reports::MdrUsageReportFetchSyncParams::AggregationType::OrSymbol
          )
        end
        attr_accessor :aggregation_type

        sig { returns(T.nilable(Time)) }
        attr_reader :end_date

        sig { params(end_date: Time).void }
        attr_writer :end_date

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :profiles

        sig { params(profiles: T::Array[String]).void }
        attr_writer :profiles

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
          aggregation_type:,
          end_date: nil,
          profiles: nil,
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
