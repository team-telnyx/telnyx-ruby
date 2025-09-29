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
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter
                  ]
                )
              )
            end
            attr_reader :filters

            sig do
              params(
                filters:
                  T::Array[
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::OrHash
                  ]
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
                filters:
                  T::Array[
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::OrHash
                  ],
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
                  filters:
                    T::Array[
                      Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter
                    ],
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

            class Filter < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Billing group UUID to filter by
              sig { returns(T.nilable(String)) }
              attr_reader :billing_group

              sig { params(billing_group: String).void }
              attr_writer :billing_group

              # Called line identification (destination number)
              sig { returns(T.nilable(String)) }
              attr_reader :cld

              sig { params(cld: String).void }
              attr_writer :cld

              # Filter type for CLD matching
              sig do
                returns(
                  T.nilable(
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CldFilter::OrSymbol
                  )
                )
              end
              attr_reader :cld_filter

              sig do
                params(
                  cld_filter:
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CldFilter::OrSymbol
                ).void
              end
              attr_writer :cld_filter

              # Calling line identification (caller ID)
              sig { returns(T.nilable(String)) }
              attr_reader :cli

              sig { params(cli: String).void }
              attr_writer :cli

              # Filter type for CLI matching
              sig do
                returns(
                  T.nilable(
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CliFilter::OrSymbol
                  )
                )
              end
              attr_reader :cli_filter

              sig do
                params(
                  cli_filter:
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CliFilter::OrSymbol
                ).void
              end
              attr_writer :cli_filter

              # Logical operator for combining filters
              sig do
                returns(
                  T.nilable(
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::FilterType::OrSymbol
                  )
                )
              end
              attr_reader :filter_type

              sig do
                params(
                  filter_type:
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::FilterType::OrSymbol
                ).void
              end
              attr_writer :filter_type

              # Tag name to filter by
              sig { returns(T.nilable(String)) }
              attr_reader :tags_list

              sig { params(tags_list: String).void }
              attr_writer :tags_list

              # Query filter criteria. Note: The first filter object must specify filter_type as
              # 'and'. You cannot follow an 'or' with another 'and'.
              sig do
                params(
                  billing_group: String,
                  cld: String,
                  cld_filter:
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CldFilter::OrSymbol,
                  cli: String,
                  cli_filter:
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CliFilter::OrSymbol,
                  filter_type:
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::FilterType::OrSymbol,
                  tags_list: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Billing group UUID to filter by
                billing_group: nil,
                # Called line identification (destination number)
                cld: nil,
                # Filter type for CLD matching
                cld_filter: nil,
                # Calling line identification (caller ID)
                cli: nil,
                # Filter type for CLI matching
                cli_filter: nil,
                # Logical operator for combining filters
                filter_type: nil,
                # Tag name to filter by
                tags_list: nil
              )
              end

              sig do
                override.returns(
                  {
                    billing_group: String,
                    cld: String,
                    cld_filter:
                      Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CldFilter::OrSymbol,
                    cli: String,
                    cli_filter:
                      Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CliFilter::OrSymbol,
                    filter_type:
                      Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::FilterType::OrSymbol,
                    tags_list: String
                  }
                )
              end
              def to_hash
              end

              # Filter type for CLD matching
              module CldFilter
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CldFilter
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                CONTAINS =
                  T.let(
                    :contains,
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CldFilter::TaggedSymbol
                  )
                STARTS_WITH =
                  T.let(
                    :starts_with,
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CldFilter::TaggedSymbol
                  )
                ENDS_WITH =
                  T.let(
                    :ends_with,
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CldFilter::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CldFilter::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Filter type for CLI matching
              module CliFilter
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CliFilter
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                CONTAINS =
                  T.let(
                    :contains,
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CliFilter::TaggedSymbol
                  )
                STARTS_WITH =
                  T.let(
                    :starts_with,
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CliFilter::TaggedSymbol
                  )
                ENDS_WITH =
                  T.let(
                    :ends_with,
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CliFilter::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::CliFilter::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              # Logical operator for combining filters
              module FilterType
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::FilterType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                AND =
                  T.let(
                    :and,
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::FilterType::TaggedSymbol
                  )
                OR =
                  T.let(
                    :or,
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::FilterType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Legacy::Reporting::BatchDetailRecords::MessagingCreateParams::Filter::FilterType::TaggedSymbol
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
  end
end
