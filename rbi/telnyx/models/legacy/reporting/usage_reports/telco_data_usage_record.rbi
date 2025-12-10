# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          class TelcoDataUsageRecord < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Legacy::Reporting::UsageReports::TelcoDataUsageRecord,
                  Telnyx::Internal::AnyHash
                )
              end

            # List of aggregations by lookup type
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::Legacy::Reporting::UsageReports::TelcoDataAggregation
                  ]
                )
              )
            end
            attr_reader :aggregations

            sig do
              params(
                aggregations:
                  T::Array[
                    Telnyx::Legacy::Reporting::UsageReports::TelcoDataAggregation::OrHash
                  ]
              ).void
            end
            attr_writer :aggregations

            # Record type identifier
            sig { returns(T.nilable(String)) }
            attr_reader :record_type

            sig { params(record_type: String).void }
            attr_writer :record_type

            # User ID
            sig { returns(T.nilable(String)) }
            attr_reader :user_id

            sig { params(user_id: String).void }
            attr_writer :user_id

            sig do
              params(
                aggregations:
                  T::Array[
                    Telnyx::Legacy::Reporting::UsageReports::TelcoDataAggregation::OrHash
                  ],
                record_type: String,
                user_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              # List of aggregations by lookup type
              aggregations: nil,
              # Record type identifier
              record_type: nil,
              # User ID
              user_id: nil
            )
            end

            sig do
              override.returns(
                {
                  aggregations:
                    T::Array[
                      Telnyx::Legacy::Reporting::UsageReports::TelcoDataAggregation
                    ],
                  record_type: String,
                  user_id: String
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
