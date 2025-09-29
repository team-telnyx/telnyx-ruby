# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          class MessagingDeleteResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data
                )
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::OrHash
              ).void
            end
            attr_writer :data

            sig do
              params(
                data:
                  Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::OrHash
              ).returns(T.attached_class)
            end
            def self.new(data: nil)
            end

            sig do
              override.returns(
                {
                  data:
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data
                }
              )
            end
            def to_hash
            end

            class Data < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Identifies the resource
              sig { returns(T.nilable(String)) }
              attr_reader :id

              sig { params(id: String).void }
              attr_writer :id

              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :connections

              sig { params(connections: T::Array[Integer]).void }
              attr_writer :connections

              sig { returns(T.nilable(Time)) }
              attr_reader :created_at

              sig { params(created_at: Time).void }
              attr_writer :created_at

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Direction::TaggedSymbol
                    ]
                  )
                )
              end
              attr_reader :directions

              sig do
                params(
                  directions:
                    T::Array[
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Direction::OrSymbol
                    ]
                ).void
              end
              attr_writer :directions

              sig { returns(T.nilable(Time)) }
              attr_reader :end_date

              sig { params(end_date: Time).void }
              attr_writer :end_date

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter
                    ]
                  )
                )
              end
              attr_reader :filters

              sig do
                params(
                  filters:
                    T::Array[
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::OrHash
                    ]
                ).void
              end
              attr_writer :filters

              # List of messaging profile IDs
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :profiles

              sig { params(profiles: T::Array[String]).void }
              attr_writer :profiles

              sig { returns(T.nilable(String)) }
              attr_reader :record_type

              sig { params(record_type: String).void }
              attr_writer :record_type

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::RecordType::TaggedSymbol
                    ]
                  )
                )
              end
              attr_reader :record_types

              sig do
                params(
                  record_types:
                    T::Array[
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::RecordType::OrSymbol
                    ]
                ).void
              end
              attr_writer :record_types

              sig { returns(T.nilable(String)) }
              attr_reader :report_name

              sig { params(report_name: String).void }
              attr_writer :report_name

              sig { returns(T.nilable(String)) }
              attr_reader :report_url

              sig { params(report_url: String).void }
              attr_writer :report_url

              sig { returns(T.nilable(Time)) }
              attr_reader :start_date

              sig { params(start_date: Time).void }
              attr_writer :start_date

              sig do
                returns(
                  T.nilable(
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Status::TaggedSymbol
                  )
                )
              end
              attr_reader :status

              sig do
                params(
                  status:
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Status::OrSymbol
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
                  connections: T::Array[Integer],
                  created_at: Time,
                  directions:
                    T::Array[
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Direction::OrSymbol
                    ],
                  end_date: Time,
                  filters:
                    T::Array[
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::OrHash
                    ],
                  profiles: T::Array[String],
                  record_type: String,
                  record_types:
                    T::Array[
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::RecordType::OrSymbol
                    ],
                  report_name: String,
                  report_url: String,
                  start_date: Time,
                  status:
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Status::OrSymbol,
                  updated_at: Time
                ).returns(T.attached_class)
              end
              def self.new(
                # Identifies the resource
                id: nil,
                connections: nil,
                created_at: nil,
                directions: nil,
                end_date: nil,
                filters: nil,
                # List of messaging profile IDs
                profiles: nil,
                record_type: nil,
                record_types: nil,
                report_name: nil,
                report_url: nil,
                start_date: nil,
                status: nil,
                updated_at: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    connections: T::Array[Integer],
                    created_at: Time,
                    directions:
                      T::Array[
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Direction::TaggedSymbol
                      ],
                    end_date: Time,
                    filters:
                      T::Array[
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter
                      ],
                    profiles: T::Array[String],
                    record_type: String,
                    record_types:
                      T::Array[
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::RecordType::TaggedSymbol
                      ],
                    report_name: String,
                    report_url: String,
                    start_date: Time,
                    status:
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Status::TaggedSymbol,
                    updated_at: Time
                  }
                )
              end
              def to_hash
              end

              module Direction
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Direction
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INBOUND =
                  T.let(
                    :INBOUND,
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Direction::TaggedSymbol
                  )
                OUTBOUND =
                  T.let(
                    :OUTBOUND,
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Direction::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Direction::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class Filter < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter,
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
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CldFilter::TaggedSymbol
                    )
                  )
                end
                attr_reader :cld_filter

                sig do
                  params(
                    cld_filter:
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CldFilter::OrSymbol
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
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CliFilter::TaggedSymbol
                    )
                  )
                end
                attr_reader :cli_filter

                sig do
                  params(
                    cli_filter:
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CliFilter::OrSymbol
                  ).void
                end
                attr_writer :cli_filter

                # Logical operator for combining filters
                sig do
                  returns(
                    T.nilable(
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::FilterType::TaggedSymbol
                    )
                  )
                end
                attr_reader :filter_type

                sig do
                  params(
                    filter_type:
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::FilterType::OrSymbol
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
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CldFilter::OrSymbol,
                    cli: String,
                    cli_filter:
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CliFilter::OrSymbol,
                    filter_type:
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::FilterType::OrSymbol,
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
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CldFilter::TaggedSymbol,
                      cli: String,
                      cli_filter:
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CliFilter::TaggedSymbol,
                      filter_type:
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::FilterType::TaggedSymbol,
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
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CldFilter
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CONTAINS =
                    T.let(
                      :contains,
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CldFilter::TaggedSymbol
                    )
                  STARTS_WITH =
                    T.let(
                      :starts_with,
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CldFilter::TaggedSymbol
                    )
                  ENDS_WITH =
                    T.let(
                      :ends_with,
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CldFilter::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CldFilter::TaggedSymbol
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
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CliFilter
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CONTAINS =
                    T.let(
                      :contains,
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CliFilter::TaggedSymbol
                    )
                  STARTS_WITH =
                    T.let(
                      :starts_with,
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CliFilter::TaggedSymbol
                    )
                  ENDS_WITH =
                    T.let(
                      :ends_with,
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CliFilter::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::CliFilter::TaggedSymbol
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
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::FilterType
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  AND =
                    T.let(
                      :and,
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::FilterType::TaggedSymbol
                    )
                  OR =
                    T.let(
                      :or,
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::FilterType::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Filter::FilterType::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              module RecordType
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::RecordType
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                INCOMPLETE =
                  T.let(
                    :INCOMPLETE,
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::RecordType::TaggedSymbol
                  )
                COMPLETED =
                  T.let(
                    :COMPLETED,
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::RecordType::TaggedSymbol
                  )
                ERRORS =
                  T.let(
                    :ERRORS,
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::RecordType::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::RecordType::TaggedSymbol
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
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Status
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PENDING =
                  T.let(
                    :PENDING,
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Status::TaggedSymbol
                  )
                COMPLETE =
                  T.let(
                    :COMPLETE,
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Status::TaggedSymbol
                  )
                FAILED =
                  T.let(
                    :FAILED,
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Status::TaggedSymbol
                  )
                EXPIRED =
                  T.let(
                    :EXPIRED,
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Status::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::MessagingDeleteResponse::Data::Status::TaggedSymbol
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
