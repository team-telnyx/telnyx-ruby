# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          class MessagingCreateParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams,
                  Telnyx::Internal::AnyHash
                )
              end

            # End time in ISO format. Note: If end time includes the last 4 hours, some MDRs
            # might not appear in this report, due to wait time for downstream message
            # delivery confirmation
            sig { returns(Time) }
            attr_accessor :end_time

            # Start time in ISO format
            sig { returns(Time) }
            attr_accessor :start_time

            # List of connections to filter by
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_reader :connections

            sig { params(connections: T::Array[Integer]).void }
            attr_writer :connections

            # List of directions to filter by (Inbound = 1, Outbound = 2)
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_reader :directions

            sig { params(directions: T::Array[Integer]).void }
            attr_writer :directions

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

            # Whether to include message body in the report
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :include_message_body

            sig { params(include_message_body: T::Boolean).void }
            attr_writer :include_message_body

            # List of managed accounts to include
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :managed_accounts

            sig { params(managed_accounts: T::Array[String]).void }
            attr_writer :managed_accounts

            # List of messaging profile IDs to filter by
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :profiles

            sig { params(profiles: T::Array[String]).void }
            attr_writer :profiles

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

            # Timezone for the report
            sig { returns(T.nilable(String)) }
            attr_reader :timezone

            sig { params(timezone: String).void }
            attr_writer :timezone

            sig do
              params(
                end_time: Time,
                start_time: Time,
                connections: T::Array[Integer],
                directions: T::Array[Integer],
                filters: T::Array[Telnyx::Legacy::Reporting::Filter::OrHash],
                include_message_body: T::Boolean,
                managed_accounts: T::Array[String],
                profiles: T::Array[String],
                record_types: T::Array[Integer],
                report_name: String,
                select_all_managed_accounts: T::Boolean,
                timezone: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # End time in ISO format. Note: If end time includes the last 4 hours, some MDRs
              # might not appear in this report, due to wait time for downstream message
              # delivery confirmation
              end_time:,
              # Start time in ISO format
              start_time:,
              # List of connections to filter by
              connections: nil,
              # List of directions to filter by (Inbound = 1, Outbound = 2)
              directions: nil,
              # List of filters to apply
              filters: nil,
              # Whether to include message body in the report
              include_message_body: nil,
              # List of managed accounts to include
              managed_accounts: nil,
              # List of messaging profile IDs to filter by
              profiles: nil,
              # List of record types to filter by (Complete = 1, Incomplete = 2, Errors = 3)
              record_types: nil,
              # Name of the report
              report_name: nil,
              # Whether to select all managed accounts
              select_all_managed_accounts: nil,
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
                  connections: T::Array[Integer],
                  directions: T::Array[Integer],
                  filters: T::Array[Telnyx::Legacy::Reporting::Filter],
                  include_message_body: T::Boolean,
                  managed_accounts: T::Array[String],
                  profiles: T::Array[String],
                  record_types: T::Array[Integer],
                  report_name: String,
                  select_all_managed_accounts: T::Boolean,
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
