# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          class MdrDetailReportResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse,
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
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Direction::TaggedSymbol
                  ]
                )
              )
            end
            attr_reader :directions

            sig do
              params(
                directions:
                  T::Array[
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Direction::OrSymbol
                  ]
              ).void
            end
            attr_writer :directions

            sig { returns(T.nilable(Time)) }
            attr_reader :end_date

            sig { params(end_date: Time).void }
            attr_writer :end_date

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
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::RecordType::TaggedSymbol
                  ]
                )
              )
            end
            attr_reader :record_types

            sig do
              params(
                record_types:
                  T::Array[
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::RecordType::OrSymbol
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
                  Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Status::TaggedSymbol
                )
              )
            end
            attr_reader :status

            sig do
              params(
                status:
                  Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Status::OrSymbol
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
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Direction::OrSymbol
                  ],
                end_date: Time,
                filters: T::Array[Telnyx::Legacy::Reporting::Filter::OrHash],
                profiles: T::Array[String],
                record_type: String,
                record_types:
                  T::Array[
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::RecordType::OrSymbol
                  ],
                report_name: String,
                report_url: String,
                start_date: Time,
                status:
                  Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Status::OrSymbol,
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
                      Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Direction::TaggedSymbol
                    ],
                  end_date: Time,
                  filters: T::Array[Telnyx::Legacy::Reporting::Filter],
                  profiles: T::Array[String],
                  record_type: String,
                  record_types:
                    T::Array[
                      Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::RecordType::TaggedSymbol
                    ],
                  report_name: String,
                  report_url: String,
                  start_date: Time,
                  status:
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Status::TaggedSymbol,
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
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Direction
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INBOUND =
                T.let(
                  :INBOUND,
                  Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Direction::TaggedSymbol
                )
              OUTBOUND =
                T.let(
                  :OUTBOUND,
                  Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Direction::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Direction::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            module RecordType
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::RecordType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INCOMPLETE =
                T.let(
                  :INCOMPLETE,
                  Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::RecordType::TaggedSymbol
                )
              COMPLETED =
                T.let(
                  :COMPLETED,
                  Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::RecordType::TaggedSymbol
                )
              ERRORS =
                T.let(
                  :ERRORS,
                  Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::RecordType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::RecordType::TaggedSymbol
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
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PENDING =
                T.let(
                  :PENDING,
                  Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Status::TaggedSymbol
                )
              COMPLETE =
                T.let(
                  :COMPLETE,
                  Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Status::TaggedSymbol
                )
              FAILED =
                T.let(
                  :FAILED,
                  Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Status::TaggedSymbol
                )
              EXPIRED =
                T.let(
                  :EXPIRED,
                  Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Legacy::Reporting::BatchDetailRecords::MdrDetailReportResponse::Status::TaggedSymbol
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
