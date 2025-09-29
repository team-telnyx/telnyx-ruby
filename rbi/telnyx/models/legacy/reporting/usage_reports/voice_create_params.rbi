# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          class VoiceCreateParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Legacy::Reporting::UsageReports::VoiceCreateParams,
                  Telnyx::Internal::AnyHash
                )
              end

            # End time in ISO format
            sig { returns(Time) }
            attr_accessor :end_time

            # Start time in ISO format
            sig { returns(Time) }
            attr_accessor :start_time

            # Aggregation type: All = 0, By Connections = 1, By Tags = 2, By Billing Group = 3
            sig { returns(T.nilable(Integer)) }
            attr_reader :aggregation_type

            sig { params(aggregation_type: Integer).void }
            attr_writer :aggregation_type

            # List of connections to filter by
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_reader :connections

            sig { params(connections: T::Array[Integer]).void }
            attr_writer :connections

            # List of managed accounts to include
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :managed_accounts

            sig { params(managed_accounts: T::Array[String]).void }
            attr_writer :managed_accounts

            # Product breakdown type: No breakdown = 0, DID vs Toll-free = 1, Country = 2, DID
            # vs Toll-free per Country = 3
            sig { returns(T.nilable(Integer)) }
            attr_reader :product_breakdown

            sig { params(product_breakdown: Integer).void }
            attr_writer :product_breakdown

            # Whether to select all managed accounts
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :select_all_managed_accounts

            sig { params(select_all_managed_accounts: T::Boolean).void }
            attr_writer :select_all_managed_accounts

            sig do
              params(
                end_time: Time,
                start_time: Time,
                aggregation_type: Integer,
                connections: T::Array[Integer],
                managed_accounts: T::Array[String],
                product_breakdown: Integer,
                select_all_managed_accounts: T::Boolean,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # End time in ISO format
              end_time:,
              # Start time in ISO format
              start_time:,
              # Aggregation type: All = 0, By Connections = 1, By Tags = 2, By Billing Group = 3
              aggregation_type: nil,
              # List of connections to filter by
              connections: nil,
              # List of managed accounts to include
              managed_accounts: nil,
              # Product breakdown type: No breakdown = 0, DID vs Toll-free = 1, Country = 2, DID
              # vs Toll-free per Country = 3
              product_breakdown: nil,
              # Whether to select all managed accounts
              select_all_managed_accounts: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  end_time: Time,
                  start_time: Time,
                  aggregation_type: Integer,
                  connections: T::Array[Integer],
                  managed_accounts: T::Array[String],
                  product_breakdown: Integer,
                  select_all_managed_accounts: T::Boolean,
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
