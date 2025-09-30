# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          class NumberLookupCreateParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Legacy::Reporting::UsageReports::NumberLookupCreateParams,
                  Telnyx::Internal::AnyHash
                )
              end

            # Type of aggregation for the report
            sig do
              returns(
                T.nilable(
                  Telnyx::Legacy::Reporting::UsageReports::NumberLookupCreateParams::AggregationType::OrSymbol
                )
              )
            end
            attr_reader :aggregation_type

            sig do
              params(
                aggregation_type:
                  Telnyx::Legacy::Reporting::UsageReports::NumberLookupCreateParams::AggregationType::OrSymbol
              ).void
            end
            attr_writer :aggregation_type

            # End date for the usage report
            sig { returns(T.nilable(Date)) }
            attr_reader :end_date

            sig { params(end_date: Date).void }
            attr_writer :end_date

            # List of managed accounts to include in the report
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :managed_accounts

            sig { params(managed_accounts: T::Array[String]).void }
            attr_writer :managed_accounts

            # Start date for the usage report
            sig { returns(T.nilable(Date)) }
            attr_reader :start_date

            sig { params(start_date: Date).void }
            attr_writer :start_date

            sig do
              params(
                aggregation_type:
                  Telnyx::Legacy::Reporting::UsageReports::NumberLookupCreateParams::AggregationType::OrSymbol,
                end_date: Date,
                managed_accounts: T::Array[String],
                start_date: Date,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Type of aggregation for the report
              aggregation_type: nil,
              # End date for the usage report
              end_date: nil,
              # List of managed accounts to include in the report
              managed_accounts: nil,
              # Start date for the usage report
              start_date: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  aggregation_type:
                    Telnyx::Legacy::Reporting::UsageReports::NumberLookupCreateParams::AggregationType::OrSymbol,
                  end_date: Date,
                  managed_accounts: T::Array[String],
                  start_date: Date,
                  request_options: Telnyx::RequestOptions
                }
              )
            end
            def to_hash
            end

            # Type of aggregation for the report
            module AggregationType
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Legacy::Reporting::UsageReports::NumberLookupCreateParams::AggregationType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ALL =
                T.let(
                  :ALL,
                  Telnyx::Legacy::Reporting::UsageReports::NumberLookupCreateParams::AggregationType::TaggedSymbol
                )
              BY_ORGANIZATION_MEMBER =
                T.let(
                  :BY_ORGANIZATION_MEMBER,
                  Telnyx::Legacy::Reporting::UsageReports::NumberLookupCreateParams::AggregationType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Legacy::Reporting::UsageReports::NumberLookupCreateParams::AggregationType::TaggedSymbol
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
