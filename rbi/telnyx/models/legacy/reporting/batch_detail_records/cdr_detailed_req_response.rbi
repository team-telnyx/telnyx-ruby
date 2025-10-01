# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          class CdrDetailedReqResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Legacy::Reporting::BatchDetailRecords::CdrDetailedReqResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            # Unique identifier for the report
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # List of call types (Inbound = 1, Outbound = 2)
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_reader :call_types

            sig { params(call_types: T::Array[Integer]).void }
            attr_writer :call_types

            # List of connections
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_reader :connections

            sig { params(connections: T::Array[Integer]).void }
            attr_writer :connections

            # Creation date of the report
            sig { returns(T.nilable(String)) }
            attr_reader :created_at

            sig { params(created_at: String).void }
            attr_writer :created_at

            # End time in ISO format
            sig { returns(T.nilable(String)) }
            attr_reader :end_time

            sig { params(end_time: String).void }
            attr_writer :end_time

            # List of filters
            sig do
              returns(T.nilable(T::Array[Telnyx::Legacy::Reporting::Filter]))
            end
            attr_reader :filters

            sig do
              params(
                filters: T::Array[Telnyx::Legacy::Reporting::Filter::OrHash]
              ).void
            end
            attr_writer :filters

            # List of managed accounts
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :managed_accounts

            sig { params(managed_accounts: T::Array[String]).void }
            attr_writer :managed_accounts

            sig { returns(T.nilable(String)) }
            attr_reader :record_type

            sig { params(record_type: String).void }
            attr_writer :record_type

            # List of record types (Complete = 1, Incomplete = 2, Errors = 3)
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_reader :record_types

            sig { params(record_types: T::Array[Integer]).void }
            attr_writer :record_types

            # Name of the report
            sig { returns(T.nilable(String)) }
            attr_reader :report_name

            sig { params(report_name: String).void }
            attr_writer :report_name

            # URL to download the report
            sig { returns(T.nilable(String)) }
            attr_reader :report_url

            sig { params(report_url: String).void }
            attr_writer :report_url

            # Number of retries
            sig { returns(T.nilable(Integer)) }
            attr_reader :retry_

            sig { params(retry_: Integer).void }
            attr_writer :retry_

            # Source of the report. Valid values: calls (default), call-control, fax-api,
            # webrtc
            sig { returns(T.nilable(String)) }
            attr_reader :source

            sig { params(source: String).void }
            attr_writer :source

            # Start time in ISO format
            sig { returns(T.nilable(String)) }
            attr_reader :start_time

            sig { params(start_time: String).void }
            attr_writer :start_time

            # Status of the report (Pending = 1, Complete = 2, Failed = 3, Expired = 4)
            sig { returns(T.nilable(Integer)) }
            attr_reader :status

            sig { params(status: Integer).void }
            attr_writer :status

            # Timezone for the report
            sig { returns(T.nilable(String)) }
            attr_reader :timezone

            sig { params(timezone: String).void }
            attr_writer :timezone

            # Last update date of the report
            sig { returns(T.nilable(String)) }
            attr_reader :updated_at

            sig { params(updated_at: String).void }
            attr_writer :updated_at

            # Response object for CDR detailed report
            sig do
              params(
                id: String,
                call_types: T::Array[Integer],
                connections: T::Array[Integer],
                created_at: String,
                end_time: String,
                filters: T::Array[Telnyx::Legacy::Reporting::Filter::OrHash],
                managed_accounts: T::Array[String],
                record_type: String,
                record_types: T::Array[Integer],
                report_name: String,
                report_url: String,
                retry_: Integer,
                source: String,
                start_time: String,
                status: Integer,
                timezone: String,
                updated_at: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Unique identifier for the report
              id: nil,
              # List of call types (Inbound = 1, Outbound = 2)
              call_types: nil,
              # List of connections
              connections: nil,
              # Creation date of the report
              created_at: nil,
              # End time in ISO format
              end_time: nil,
              # List of filters
              filters: nil,
              # List of managed accounts
              managed_accounts: nil,
              record_type: nil,
              # List of record types (Complete = 1, Incomplete = 2, Errors = 3)
              record_types: nil,
              # Name of the report
              report_name: nil,
              # URL to download the report
              report_url: nil,
              # Number of retries
              retry_: nil,
              # Source of the report. Valid values: calls (default), call-control, fax-api,
              # webrtc
              source: nil,
              # Start time in ISO format
              start_time: nil,
              # Status of the report (Pending = 1, Complete = 2, Failed = 3, Expired = 4)
              status: nil,
              # Timezone for the report
              timezone: nil,
              # Last update date of the report
              updated_at: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  call_types: T::Array[Integer],
                  connections: T::Array[Integer],
                  created_at: String,
                  end_time: String,
                  filters: T::Array[Telnyx::Legacy::Reporting::Filter],
                  managed_accounts: T::Array[String],
                  record_type: String,
                  record_types: T::Array[Integer],
                  report_name: String,
                  report_url: String,
                  retry_: Integer,
                  source: String,
                  start_time: String,
                  status: Integer,
                  timezone: String,
                  updated_at: String
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
