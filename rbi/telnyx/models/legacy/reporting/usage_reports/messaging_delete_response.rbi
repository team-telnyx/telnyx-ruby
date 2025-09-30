# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          class MessagingDeleteResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Legacy::Reporting::UsageReports::MessagingDeleteResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            # Legacy V2 MDR usage report response
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Legacy::Reporting::UsageReports::MessagingDeleteResponse::Data
                )
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  Telnyx::Models::Legacy::Reporting::UsageReports::MessagingDeleteResponse::Data::OrHash
              ).void
            end
            attr_writer :data

            sig do
              params(
                data:
                  Telnyx::Models::Legacy::Reporting::UsageReports::MessagingDeleteResponse::Data::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Legacy V2 MDR usage report response
              data: nil
            )
            end

            sig do
              override.returns(
                {
                  data:
                    Telnyx::Models::Legacy::Reporting::UsageReports::MessagingDeleteResponse::Data
                }
              )
            end
            def to_hash
            end

            class Data < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::Legacy::Reporting::UsageReports::MessagingDeleteResponse::Data,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Identifies the resource
              sig { returns(T.nilable(String)) }
              attr_reader :id

              sig { params(id: String).void }
              attr_writer :id

              # Aggregation type: No aggregation = 0, By Messaging Profile = 1, By Tags = 2
              sig { returns(T.nilable(Integer)) }
              attr_reader :aggregation_type

              sig { params(aggregation_type: Integer).void }
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

              # List of messaging profile IDs
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :profiles

              sig { params(profiles: T::Array[String]).void }
              attr_writer :profiles

              sig { returns(T.nilable(String)) }
              attr_reader :record_type

              sig { params(record_type: String).void }
              attr_writer :record_type

              sig { returns(T.nilable(String)) }
              attr_reader :report_url

              sig { params(report_url: String).void }
              attr_writer :report_url

              sig { returns(T.nilable(T.anything)) }
              attr_reader :result

              sig { params(result: T.anything).void }
              attr_writer :result

              sig { returns(T.nilable(Time)) }
              attr_reader :start_time

              sig { params(start_time: Time).void }
              attr_writer :start_time

              # Status of the report (Pending = 1, Complete = 2, Failed = 3, Expired = 4)
              sig { returns(T.nilable(Integer)) }
              attr_reader :status

              sig { params(status: Integer).void }
              attr_writer :status

              sig { returns(T.nilable(Time)) }
              attr_reader :updated_at

              sig { params(updated_at: Time).void }
              attr_writer :updated_at

              # Legacy V2 MDR usage report response
              sig do
                params(
                  id: String,
                  aggregation_type: Integer,
                  connections: T::Array[Integer],
                  created_at: Time,
                  end_time: Time,
                  profiles: T::Array[String],
                  record_type: String,
                  report_url: String,
                  result: T.anything,
                  start_time: Time,
                  status: Integer,
                  updated_at: Time
                ).returns(T.attached_class)
              end
              def self.new(
                # Identifies the resource
                id: nil,
                # Aggregation type: No aggregation = 0, By Messaging Profile = 1, By Tags = 2
                aggregation_type: nil,
                connections: nil,
                created_at: nil,
                end_time: nil,
                # List of messaging profile IDs
                profiles: nil,
                record_type: nil,
                report_url: nil,
                result: nil,
                start_time: nil,
                # Status of the report (Pending = 1, Complete = 2, Failed = 3, Expired = 4)
                status: nil,
                updated_at: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    aggregation_type: Integer,
                    connections: T::Array[Integer],
                    created_at: Time,
                    end_time: Time,
                    profiles: T::Array[String],
                    record_type: String,
                    report_url: String,
                    result: T.anything,
                    start_time: Time,
                    status: Integer,
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
end
