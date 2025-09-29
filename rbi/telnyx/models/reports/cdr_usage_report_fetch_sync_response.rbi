# typed: strong

module Telnyx
  module Models
    module Reports
      class CdrUsageReportFetchSyncResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # Identifies the resource
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig do
            returns(
              T.nilable(
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::AggregationType::TaggedSymbol
              )
            )
          end
          attr_reader :aggregation_type

          sig do
            params(
              aggregation_type:
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::AggregationType::OrSymbol
            ).void
          end
          attr_writer :aggregation_type

          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :connections

          sig { params(connections: T::Array[Integer]).void }
          attr_writer :connections

          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          sig { returns(T.nilable(Time)) }
          attr_reader :end_time

          sig { params(end_time: Time).void }
          attr_writer :end_time

          sig do
            returns(
              T.nilable(
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::ProductBreakdown::TaggedSymbol
              )
            )
          end
          attr_reader :product_breakdown

          sig do
            params(
              product_breakdown:
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::ProductBreakdown::OrSymbol
            ).void
          end
          attr_writer :product_breakdown

          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          sig { returns(T.nilable(String)) }
          attr_reader :report_url

          sig { params(report_url: String).void }
          attr_writer :report_url

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :result

          sig { params(result: T::Hash[Symbol, T.anything]).void }
          attr_writer :result

          sig { returns(T.nilable(Time)) }
          attr_reader :start_time

          sig { params(start_time: Time).void }
          attr_writer :start_time

          sig do
            returns(
              T.nilable(
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::Status::OrSymbol
            ).void
          end
          attr_writer :status

          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          sig do
            params(
              id: String,
              aggregation_type:
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::AggregationType::OrSymbol,
              connections: T::Array[Integer],
              created_at: Time,
              end_time: Time,
              product_breakdown:
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::ProductBreakdown::OrSymbol,
              record_type: String,
              report_url: String,
              result: T::Hash[Symbol, T.anything],
              start_time: Time,
              status:
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::Status::OrSymbol,
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # Identifies the resource
            id: nil,
            aggregation_type: nil,
            connections: nil,
            created_at: nil,
            end_time: nil,
            product_breakdown: nil,
            record_type: nil,
            report_url: nil,
            result: nil,
            start_time: nil,
            status: nil,
            updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                aggregation_type:
                  Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::AggregationType::TaggedSymbol,
                connections: T::Array[Integer],
                created_at: Time,
                end_time: Time,
                product_breakdown:
                  Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::ProductBreakdown::TaggedSymbol,
                record_type: String,
                report_url: String,
                result: T::Hash[Symbol, T.anything],
                start_time: Time,
                status:
                  Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::Status::TaggedSymbol,
                updated_at: Time
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
                  Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::AggregationType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NO_AGGREGATION =
              T.let(
                :NO_AGGREGATION,
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::AggregationType::TaggedSymbol
              )
            CONNECTION =
              T.let(
                :CONNECTION,
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::AggregationType::TaggedSymbol
              )
            TAG =
              T.let(
                :TAG,
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::AggregationType::TaggedSymbol
              )
            BILLING_GROUP =
              T.let(
                :BILLING_GROUP,
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::AggregationType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::AggregationType::TaggedSymbol
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
                  Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::ProductBreakdown
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NO_BREAKDOWN =
              T.let(
                :NO_BREAKDOWN,
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::ProductBreakdown::TaggedSymbol
              )
            DID_VS_TOLL_FREE =
              T.let(
                :DID_VS_TOLL_FREE,
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::ProductBreakdown::TaggedSymbol
              )
            COUNTRY =
              T.let(
                :COUNTRY,
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::ProductBreakdown::TaggedSymbol
              )
            DID_VS_TOLL_FREE_PER_COUNTRY =
              T.let(
                :DID_VS_TOLL_FREE_PER_COUNTRY,
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::ProductBreakdown::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::ProductBreakdown::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :PENDING,
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::Status::TaggedSymbol
              )
            COMPLETE =
              T.let(
                :COMPLETE,
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :FAILED,
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::Status::TaggedSymbol
              )
            EXPIRED =
              T.let(
                :EXPIRED,
                Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Reports::CdrUsageReportFetchSyncResponse::Data::Status::TaggedSymbol
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
end
