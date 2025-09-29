# typed: strong

module Telnyx
  module Models
    module Reports
      class CdrUsageReportFetchSyncParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Reports::CdrUsageReportFetchSyncParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            Telnyx::Reports::CdrUsageReportFetchSyncParams::AggregationType::OrSymbol
          )
        end
        attr_accessor :aggregation_type

        sig do
          returns(
            Telnyx::Reports::CdrUsageReportFetchSyncParams::ProductBreakdown::OrSymbol
          )
        end
        attr_accessor :product_breakdown

        sig { returns(T.nilable(T::Array[Float])) }
        attr_reader :connections

        sig { params(connections: T::Array[Float]).void }
        attr_writer :connections

        sig { returns(T.nilable(Time)) }
        attr_reader :end_date

        sig { params(end_date: Time).void }
        attr_writer :end_date

        sig { returns(T.nilable(Time)) }
        attr_reader :start_date

        sig { params(start_date: Time).void }
        attr_writer :start_date

        sig do
          params(
            aggregation_type:
              Telnyx::Reports::CdrUsageReportFetchSyncParams::AggregationType::OrSymbol,
            product_breakdown:
              Telnyx::Reports::CdrUsageReportFetchSyncParams::ProductBreakdown::OrSymbol,
            connections: T::Array[Float],
            end_date: Time,
            start_date: Time,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          aggregation_type:,
          product_breakdown:,
          connections: nil,
          end_date: nil,
          start_date: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              aggregation_type:
                Telnyx::Reports::CdrUsageReportFetchSyncParams::AggregationType::OrSymbol,
              product_breakdown:
                Telnyx::Reports::CdrUsageReportFetchSyncParams::ProductBreakdown::OrSymbol,
              connections: T::Array[Float],
              end_date: Time,
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
                Telnyx::Reports::CdrUsageReportFetchSyncParams::AggregationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NO_AGGREGATION =
            T.let(
              :NO_AGGREGATION,
              Telnyx::Reports::CdrUsageReportFetchSyncParams::AggregationType::TaggedSymbol
            )
          CONNECTION =
            T.let(
              :CONNECTION,
              Telnyx::Reports::CdrUsageReportFetchSyncParams::AggregationType::TaggedSymbol
            )
          TAG =
            T.let(
              :TAG,
              Telnyx::Reports::CdrUsageReportFetchSyncParams::AggregationType::TaggedSymbol
            )
          BILLING_GROUP =
            T.let(
              :BILLING_GROUP,
              Telnyx::Reports::CdrUsageReportFetchSyncParams::AggregationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Reports::CdrUsageReportFetchSyncParams::AggregationType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module ProductBreakdown
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Reports::CdrUsageReportFetchSyncParams::ProductBreakdown
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NO_BREAKDOWN =
            T.let(
              :NO_BREAKDOWN,
              Telnyx::Reports::CdrUsageReportFetchSyncParams::ProductBreakdown::TaggedSymbol
            )
          DID_VS_TOLL_FREE =
            T.let(
              :DID_VS_TOLL_FREE,
              Telnyx::Reports::CdrUsageReportFetchSyncParams::ProductBreakdown::TaggedSymbol
            )
          COUNTRY =
            T.let(
              :COUNTRY,
              Telnyx::Reports::CdrUsageReportFetchSyncParams::ProductBreakdown::TaggedSymbol
            )
          DID_VS_TOLL_FREE_PER_COUNTRY =
            T.let(
              :DID_VS_TOLL_FREE_PER_COUNTRY,
              Telnyx::Reports::CdrUsageReportFetchSyncParams::ProductBreakdown::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Reports::CdrUsageReportFetchSyncParams::ProductBreakdown::TaggedSymbol
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
