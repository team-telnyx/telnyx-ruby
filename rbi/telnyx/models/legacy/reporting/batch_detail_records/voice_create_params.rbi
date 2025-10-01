# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          class VoiceCreateParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Legacy::Reporting::BatchDetailRecords::VoiceCreateParams,
                  Telnyx::Internal::AnyHash
                )
              end

            # End time in ISO format
            sig { returns(Time) }
            attr_accessor :end_time

            # Start time in ISO format
            sig { returns(Time) }
            attr_accessor :start_time

            # List of call types to filter by (Inbound = 1, Outbound = 2)
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_reader :call_types

            sig { params(call_types: T::Array[Integer]).void }
            attr_writer :call_types

            # List of connections to filter by
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_reader :connections

            sig { params(connections: T::Array[Integer]).void }
            attr_writer :connections

            # Set of fields to include in the report
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :fields

            sig { params(fields: T::Array[String]).void }
            attr_writer :fields

            # List of filters to apply
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

            # Whether to include all metadata
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :include_all_metadata

            sig { params(include_all_metadata: T::Boolean).void }
            attr_writer :include_all_metadata

            # List of managed accounts to include
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :managed_accounts

            sig { params(managed_accounts: T::Array[String]).void }
            attr_writer :managed_accounts

            # List of record types to filter by (Complete = 1, Incomplete = 2, Errors = 3)
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_reader :record_types

            sig { params(record_types: T::Array[Integer]).void }
            attr_writer :record_types

            # Name of the report
            sig { returns(T.nilable(String)) }
            attr_reader :report_name

            sig { params(report_name: String).void }
            attr_writer :report_name

            # Whether to select all managed accounts
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :select_all_managed_accounts

            sig { params(select_all_managed_accounts: T::Boolean).void }
            attr_writer :select_all_managed_accounts

            # Source of the report. Valid values: calls (default), call-control, fax-api,
            # webrtc
            sig { returns(T.nilable(String)) }
            attr_reader :source

            sig { params(source: String).void }
            attr_writer :source

            # Timezone for the report
            sig { returns(T.nilable(String)) }
            attr_reader :timezone

            sig { params(timezone: String).void }
            attr_writer :timezone

            sig do
              params(
                end_time: Time,
                start_time: Time,
                call_types: T::Array[Integer],
                connections: T::Array[Integer],
                fields: T::Array[String],
                filters: T::Array[Telnyx::Legacy::Reporting::Filter::OrHash],
                include_all_metadata: T::Boolean,
                managed_accounts: T::Array[String],
                record_types: T::Array[Integer],
                report_name: String,
                select_all_managed_accounts: T::Boolean,
                source: String,
                timezone: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # End time in ISO format
              end_time:,
              # Start time in ISO format
              start_time:,
              # List of call types to filter by (Inbound = 1, Outbound = 2)
              call_types: nil,
              # List of connections to filter by
              connections: nil,
              # Set of fields to include in the report
              fields: nil,
              # List of filters to apply
              filters: nil,
              # Whether to include all metadata
              include_all_metadata: nil,
              # List of managed accounts to include
              managed_accounts: nil,
              # List of record types to filter by (Complete = 1, Incomplete = 2, Errors = 3)
              record_types: nil,
              # Name of the report
              report_name: nil,
              # Whether to select all managed accounts
              select_all_managed_accounts: nil,
              # Source of the report. Valid values: calls (default), call-control, fax-api,
              # webrtc
              source: nil,
              # Timezone for the report
              timezone: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  end_time: Time,
                  start_time: Time,
                  call_types: T::Array[Integer],
                  connections: T::Array[Integer],
                  fields: T::Array[String],
                  filters: T::Array[Telnyx::Legacy::Reporting::Filter],
                  include_all_metadata: T::Boolean,
                  managed_accounts: T::Array[String],
                  record_types: T::Array[Integer],
                  report_name: String,
                  select_all_managed_accounts: T::Boolean,
                  source: String,
                  timezone: String,
                  request_options: Telnyx::RequestOptions
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
