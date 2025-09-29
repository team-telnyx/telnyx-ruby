# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          class VoiceListResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data
                  ]
                )
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  T::Array[
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::OrHash
                  ]
              ).void
            end
            attr_writer :data

            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Meta
                )
              )
            end
            attr_reader :meta

            sig do
              params(
                meta:
                  Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Meta::OrHash
              ).void
            end
            attr_writer :meta

            sig do
              params(
                data:
                  T::Array[
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::OrHash
                  ],
                meta:
                  Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Meta::OrHash
              ).returns(T.attached_class)
            end
            def self.new(data: nil, meta: nil)
            end

            sig do
              override.returns(
                {
                  data:
                    T::Array[
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data
                    ],
                  meta:
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Meta
                }
              )
            end
            def to_hash
            end

            class Data < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data,
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
                returns(
                  T.nilable(
                    T::Array[
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter
                    ]
                  )
                )
              end
              attr_reader :filters

              sig do
                params(
                  filters:
                    T::Array[
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::OrHash
                    ]
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
                  filters:
                    T::Array[
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::OrHash
                    ],
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
                    filters:
                      T::Array[
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter
                      ],
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

              class Filter < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter,
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
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::CldFilter::TaggedSymbol
                    )
                  )
                end
                attr_reader :cld_filter

                sig do
                  params(
                    cld_filter:
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::CldFilter::OrSymbol
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
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::CliFilter::TaggedSymbol
                    )
                  )
                end
                attr_reader :cli_filter

                sig do
                  params(
                    cli_filter:
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::CliFilter::OrSymbol
                  ).void
                end
                attr_writer :cli_filter

                # Logical operator for combining filters
                sig do
                  returns(
                    T.nilable(
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::FilterType::TaggedSymbol
                    )
                  )
                end
                attr_reader :filter_type

                sig do
                  params(
                    filter_type:
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::FilterType::OrSymbol
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
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::CldFilter::OrSymbol,
                    cli: String,
                    cli_filter:
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::CliFilter::OrSymbol,
                    filter_type:
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::FilterType::OrSymbol,
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
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::CldFilter::TaggedSymbol,
                      cli: String,
                      cli_filter:
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::CliFilter::TaggedSymbol,
                      filter_type:
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::FilterType::TaggedSymbol,
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
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::CldFilter
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CONTAINS =
                    T.let(
                      :contains,
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::CldFilter::TaggedSymbol
                    )
                  STARTS_WITH =
                    T.let(
                      :starts_with,
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::CldFilter::TaggedSymbol
                    )
                  ENDS_WITH =
                    T.let(
                      :ends_with,
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::CldFilter::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::CldFilter::TaggedSymbol
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
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::CliFilter
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CONTAINS =
                    T.let(
                      :contains,
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::CliFilter::TaggedSymbol
                    )
                  STARTS_WITH =
                    T.let(
                      :starts_with,
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::CliFilter::TaggedSymbol
                    )
                  ENDS_WITH =
                    T.let(
                      :ends_with,
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::CliFilter::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::CliFilter::TaggedSymbol
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
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::FilterType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  AND =
                    T.let(
                      :and,
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::FilterType::TaggedSymbol
                    )
                  OR =
                    T.let(
                      :or,
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::FilterType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Data::Filter::FilterType::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end

            class Meta < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::VoiceListResponse::Meta,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :page_number

              sig { params(page_number: Integer).void }
              attr_writer :page_number

              sig { returns(T.nilable(Integer)) }
              attr_reader :page_size

              sig { params(page_size: Integer).void }
              attr_writer :page_size

              sig { returns(T.nilable(Integer)) }
              attr_reader :total_pages

              sig { params(total_pages: Integer).void }
              attr_writer :total_pages

              sig { returns(T.nilable(Integer)) }
              attr_reader :total_results

              sig { params(total_results: Integer).void }
              attr_writer :total_results

              sig do
                params(
                  page_number: Integer,
                  page_size: Integer,
                  total_pages: Integer,
                  total_results: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                page_number: nil,
                page_size: nil,
                total_pages: nil,
                total_results: nil
              )
              end

              sig do
                override.returns(
                  {
                    page_number: Integer,
                    page_size: Integer,
                    total_pages: Integer,
                    total_results: Integer
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
end
