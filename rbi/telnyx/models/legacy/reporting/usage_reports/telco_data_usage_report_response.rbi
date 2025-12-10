# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          class TelcoDataUsageReportResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Legacy::Reporting::UsageReports::TelcoDataUsageReportResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            # Unique identifier for the report
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # Type of aggregation used in the report
            sig { returns(T.nilable(String)) }
            attr_reader :aggregation_type

            sig { params(aggregation_type: String).void }
            attr_writer :aggregation_type

            # Timestamp when the report was created
            sig { returns(T.nilable(Time)) }
            attr_reader :created_at

            sig { params(created_at: Time).void }
            attr_writer :created_at

            # End date of the report period
            sig { returns(T.nilable(Date)) }
            attr_reader :end_date

            sig { params(end_date: Date).void }
            attr_writer :end_date

            # List of managed account IDs included in the report
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :managed_accounts

            sig { params(managed_accounts: T::Array[String]).void }
            attr_writer :managed_accounts

            # Record type identifier
            sig { returns(T.nilable(String)) }
            attr_reader :record_type

            sig { params(record_type: String).void }
            attr_writer :record_type

            # URL to download the complete report
            sig { returns(T.nilable(String)) }
            attr_reader :report_url

            sig { params(report_url: String).void }
            attr_writer :report_url

            # Array of usage records
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::Legacy::Reporting::UsageReports::TelcoDataUsageRecord
                  ]
                )
              )
            end
            attr_reader :result

            sig do
              params(
                result:
                  T::Array[
                    Telnyx::Legacy::Reporting::UsageReports::TelcoDataUsageRecord::OrHash
                  ]
              ).void
            end
            attr_writer :result

            # Start date of the report period
            sig { returns(T.nilable(Date)) }
            attr_reader :start_date

            sig { params(start_date: Date).void }
            attr_writer :start_date

            # Current status of the report
            sig { returns(T.nilable(String)) }
            attr_reader :status

            sig { params(status: String).void }
            attr_writer :status

            # Timestamp when the report was last updated
            sig { returns(T.nilable(Time)) }
            attr_reader :updated_at

            sig { params(updated_at: Time).void }
            attr_writer :updated_at

            # Telco data usage report response
            sig do
              params(
                id: String,
                aggregation_type: String,
                created_at: Time,
                end_date: Date,
                managed_accounts: T::Array[String],
                record_type: String,
                report_url: String,
                result:
                  T::Array[
                    Telnyx::Legacy::Reporting::UsageReports::TelcoDataUsageRecord::OrHash
                  ],
                start_date: Date,
                status: String,
                updated_at: Time
              ).returns(T.attached_class)
            end
            def self.new(
              # Unique identifier for the report
              id: nil,
              # Type of aggregation used in the report
              aggregation_type: nil,
              # Timestamp when the report was created
              created_at: nil,
              # End date of the report period
              end_date: nil,
              # List of managed account IDs included in the report
              managed_accounts: nil,
              # Record type identifier
              record_type: nil,
              # URL to download the complete report
              report_url: nil,
              # Array of usage records
              result: nil,
              # Start date of the report period
              start_date: nil,
              # Current status of the report
              status: nil,
              # Timestamp when the report was last updated
              updated_at: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  aggregation_type: String,
                  created_at: Time,
                  end_date: Date,
                  managed_accounts: T::Array[String],
                  record_type: String,
                  report_url: String,
                  result:
                    T::Array[
                      Telnyx::Legacy::Reporting::UsageReports::TelcoDataUsageRecord
                    ],
                  start_date: Date,
                  status: String,
                  updated_at: Time
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
